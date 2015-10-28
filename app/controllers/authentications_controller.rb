class AuthenticationsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
    else
      render :new
    end
  end

  def destroy
    reset_session
  end
end
