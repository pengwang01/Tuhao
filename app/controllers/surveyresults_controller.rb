class SurveyresultsController < ApplicationController

	def Surveyresults_params
    	params.require(:Surveyresults).permit(:ResultId, :SurveyId, :UserAnswer1, :UserAnswer2, :UserAnswer3, :UserAnswer4, :UserAnswer5, :UserAnswer6, :UserAnswer7, :UserAnswer8, :UserAnswer9, :UserAnswer10, :UserComment)
  	end
	

	# GET /posts
  	# GET /posts.json
  	def index
    	@surveyresults = Surveyresults.all
  	end

	# GET /posts/new
	def new
		@surveyresults = Surveyresults.new
	end

	# POST
	def create
    @surveyresults = Surveyresults.new(Surveyresults_params)
	    respond_to do |format|
	    	if @surveyresults.save
	    		format.html { redirect_to welcome_index_path , notice: 'Thank you for taking your time to do the survey.' }
	      	else
	        	format.html { render action: 'new' }
	        	format.json { render json: @user.errors, status: :unprocessable_entity }
	      	end
	    end
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    	def set_post
      		@surveyresults = Surveyresults.find(params[:ResultId])
    	end

end
