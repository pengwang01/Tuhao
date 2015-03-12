class PetsController < ApplicationController
	before_filter :authorize, :except => ["new", "create"]

	# GET /posts
  	# GET /posts.json
  	def index
    	@pets = Pet.all
  	end

	# GET /posts/new
	def new
		@pet = Pet.new
	end

	def edit_profile
		# params[:id] is the pet id passed in url
		if current_user.pets.find_by_id(params[:id]) != nil then
     		@pet = current_user.pets.find(params[:id])
     	else
     		respond_to do |format|
     			format.html { redirect_to profile_path , flash:{alert: "Could not find the pet."} }
     		end
     	end  		
    end

	# POST
	def create
	params[:pet][:user_id] = current_user.id
    @pet = Pet.new(pet_params)
    
	    respond_to do |format|
	    	if @pet.save
	    		format.html { redirect_to profile_path , flash:{success: 'Pet was successfully created.'} }
	      	else
	        	format.html { render action: 'new', flash:{alert: "Unable to create such pet."} }
	        	format.json { render json: @pet.errors, status: :unprocessable_entity }
	      	end
	    end
  	end

  	def update
		@pet = current_user.pets.find_by_id(params[:id])
		respond_to do |format|
		  if @pet.update(pet_params)
		    format.html { redirect_to profile_path, flash: {success: 'Pet was successfully updated.' } }
		    format.json { head :no_content }
		  else
		    format.html { redirect_to profile_path, flash: {alert: 'Unable to update pet profile.' } }
		    format.json { render json: @pet.errors, status: :unprocessable_entity }
		  end
		end
	end

  	private
  		def pet_params
    		params.require(:pet).permit(:name, :birthday, :gender, :category, :breed, :user_id)
  		end
  		
  		def set_book
      		@pet = Pet.find(params[:id])
    	end
    	
    	# Use callbacks to share common setup or constraints between actions.
    	def set_post
      		@pet = Pet.find(params[:id])
    	end
end
