class SessionsController < ApplicationController
  def new
      @title = "Sign In"
  end

  def create
    #render 'new'
    user = User.authenticate(params[:session][:email], 
                             params[:session][:password])
    if user.nil?
      #error message and redirect to sign up page
      flash.now[:error] = "invalid email/password combination"
      @title = "Sign in"
      render 'new'
    else
      # sign in user and redirect to user's show page
      sign_in user
      redirect_back_or user
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end

  

  