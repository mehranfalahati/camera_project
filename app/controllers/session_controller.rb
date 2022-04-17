class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:loginmessage] = 'Hello, you are logged in!'
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:logoutmessage] = 'Goodbye, you are logged out!'
    redirect_to login_path
  end
end
