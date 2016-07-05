class SessionsController < ApplicationController
  def new
  end



  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      flash.now[:success] = "Welcome back #{user.name}!"

    else
      flash.now[:danger] = "Uh Oh, something went wrong."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
