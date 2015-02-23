class SessionsController < ApplicationController
	
  def new
  end

  # POST method for logging in a session
  def create
  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to user_path(user), :notice => "You're sucessfully logged in. Welcome " + user.firstname + " " + user.lastname  		
  	else
  		redirect_to signin_path, :alert => "Username and password did not match, please try again."
  	end
  end

  # Get method for logging out a session
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
  
end
