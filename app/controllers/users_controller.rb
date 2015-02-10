class UsersController < ApplicationController

	def user_params
    	params.require(:user).permit(:firstName, :lastName, :email, :password)
  	end
	

	# GET /posts
  	# GET /posts.json
  	def index
    	@users = User.all
  	end

	# GET /posts/new
	def new
		@user = User.new
	end

	# POST
	def create
    @user = User.new(user_params)

	    respond_to do |format|
	    	if @user.save
	    		format.html { redirect_to @user , notice: 'user was successfully created.' }
	        	format.json { render json: @user }
	      	else
	        	format.html { render action: 'new' }
	        	format.json { render json: @user.errors, status: :unprocessable_entity }
	      	end
	    end
  	end

	def show
		@user = User.find(params[:id])
  	end	


  	private
    # Use callbacks to share common setup or constraints between actions.
    	def set_post
      		@user = User.find(params[:id])
    	end

end
