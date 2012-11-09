class StartupsController < ApplicationController
  # GET /startups
  # GET /startups.json
  def index
    @startups = Startup.all

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
          PingMailer.ping_startup(@startup).deliver
        end
      end
    else
      response.status = 403
    end

    render :nothing => true
  end

  def follow
    @startup = Startup.find(params[:id])

    if user_signed_in?
      #angel_response = Net::HTTP.post_form(URI.parse("https://api.angel.co/follows"), {"access_token" => current_user.token, "type" => "startup", "id" =>  @startup.angellist_id})

      angel_api = Net::HTTP.new("api.angel.co")
      angel_api.use_ssl = true
      angel_api.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Post.new("/1/follows")
      request.set_form_data({"access_token" => current_user.token, "type" => "startup", "id" =>  @startup.angellist_id})
      angel_response = angel_api.request(request)

      puts angel_response
      puts angel_response.body
    else
      response.status = 403
    end

    render :nothing => true
  end
end
