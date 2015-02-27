class UsersController < ApplicationController
	before_filter :authorize, :except => ["new", "create"]

	def user_params
    	params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
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
	    		format.html { redirect_to login_path , flash:{success: 'User was successfully created, please log in.'} }
	      	else
	        	format.html { render action: 'new', flash:{alert: "Unable to create such user."} }
	        	format.json { render json: @user.errors, status: :unprocessable_entity }
	      	end
	    end
  	end

  	# GET /books/1/edit
    def edit
    end

  	# PATCH/PUT /users/1
  	# PATCH/PUT /users/1.json
	def update
		respond_to do |format|
		  if @user.update(user_params)
		    format.html { redirect_to @user, notice: 'User was successfully updated.' }
		    format.json { head :no_content }
		  else
		    format.html { render action: 'edit' }
		    format.json { render json: @user.errors, status: :unprocessable_entity }
		  end
		end
	end

  	def signin
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
