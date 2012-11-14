class StartupsController < ApplicationController
  # GET /startups
  # GET /startups.json
  def index
    # TODO: Uncomment this line when ready to unveil the order
    if Rails.env.production?
      @startups = Startup.order("RANDOM()")
    else
      @startups = Startup.order("pitch_time ASC")
    end

    # This highlights the startup currently presenting
    # It finds wether the current time is between the given startupa and the next one
    # If no next startup exists, it defaults to 30mins
    @startups.each_cons(2) do |startup, next_startup|
      if (startup.pitch_time..next_startup.pitch_time).cover? Time.at(Time.now.utc + Time.zone_offset('EST'))
        startup["active"] = true;
      end
    end
    # Special case: handle the last startup, consider it active if it's within 30mins of their pitch start time
    if (@startups.last.pitch_time..(@startups.last.pitch_time + 30.minutes)).cover? DateTime.now.change(:offset => "+0000")
      @startups.last["active"] = true;
    end

    # Fetch the current follows if the user is signed in throught AngelList
    if user_signed_in? and current_user.uid
      angel_response = $angel_api.request(Net::HTTP::Get.new("/1/users/#{current_user.uid}/following/ids?type=startup"))

      if angel_response.code.to_i == 200
        @follows = JSON.parse(angel_response.body)["ids"]
      end
    end

    if user_signed_in?
      @pings = UserPing.where(:user_id => current_user.id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @startups }
    end
  end

  def ping
    @startup = Startup.find(params[:id])

    if user_signed_in?
      # Make sure the user hasn't already pinged that startup
      unless UserPing.exists?(:startup_id => @startup.id, :user_id => current_user.id)
        if UserPing.create(:startup_id => @startup.id, :user_id => current_user.id)
          PingMailer.ping_startup(@startup, current_user).deliver
          PingMailer.confirmation_email(@startup, current_user).deliver
        end
      end
    else
      response.status = 403
    end

    render :nothing => true
  end

  def follow
    @startup = Startup.find(params[:id])

    if user_signed_in? and current_user.uid
      request = Net::HTTP::Post.new("/1/follows")
      request.set_form_data({"access_token" => current_user.token, "type" => "startup", "id" =>  @startup.angellist_id})
      $angel_api.request(request)
    else
      response.status = 403
    end

    render :nothing => true
  end
end
