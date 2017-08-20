class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    req = request.env["omniauth.auth"]
    binding.pry
    if !req.nil?
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  else
    @user = User.create(user_params)
    session[:user_id] = @user.id
    binding.pry
    redirect_to user_path(@user)
  end
  end


  private

  def user_params
    params.require(:user).permite(:email, :password)
  end

end
