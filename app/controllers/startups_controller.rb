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
end
