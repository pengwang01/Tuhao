class SessionsController < ApplicationController
	
  def new
  end

  # POST method for logging in a session
  def create
  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to user_path(user), flash: {success: "You have sucessfully logged in. Welcome " + user.firstname + " " + user.lastname}
  	else
  		redirect_to login_path, flash: {alert: "Username and password did not match, please try again."}
  	end
  end

  # Get method for logging out a session
  def destroy
    session[:user_id] = nil
    redirect_to '/login', flash: {success: "You have successfully logged out."}
  end

end
