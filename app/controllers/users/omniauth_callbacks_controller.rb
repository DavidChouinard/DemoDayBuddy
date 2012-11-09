class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def angellist
    @user = User.find_for_angellist_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      set_flash_message(:notice, :success, :kind => "AngelList") if is_navigational_format?
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.angellist_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
