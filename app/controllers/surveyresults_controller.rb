class SurveyresultsController < ApplicationController

	def surveyresult_params
    	params.require(:surveyresult).permit(:ResultId, :SurveyId, :UserAnswer1, :UserAnswer2, :UserAnswer3, :UserAnswer4, :UserAnswer5, :UserAnswer6, :UserAnswer7, :UserAnswer8, :UserAnswer9, :UserAnswer10, :UserComment)
  	end
	

	# GET /posts
  	# GET /posts.json
  	def index
    	@surveyresults = Surveyresult.all
  	end

	# GET /posts/new
	def new
		@surveyresults = Surveyresult.new
	end

	# POST
	def create
    @surveyresults = Surveyresult.new(surveyresult_params)
	    respond_to do |format|
	    	if @surveyresults.save
	    		format.html { redirect_to root_path , flash:{success: 'Thank you for taking your time to do the survey.'} }
	      	else
	        	format.html { render action: 'new' }
	        	format.json { render json: @user.errors, status: :unprocessable_entity }
	      	end
	    end
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    	def set_post
      		@surveyresults = Surveyresult.find(params[:ResultId])
    	end

end
