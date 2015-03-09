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

	# POST
	def create
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

  	private
  		def pet_params
    		params.require(:pet).permit(:name, :birthday, :gender, :category, :breed)
  		end
  		
  		def set_book
      		@pet = Pet.find(params[:id])
    	end
    	
    	# Use callbacks to share common setup or constraints between actions.
    	def set_post
      		@pet = Pet.find(params[:id])
    	end
end
