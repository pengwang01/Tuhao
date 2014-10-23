class WelcomeController < ApplicationController
	@posts 
	def index
		if params[:simple_from] or params[:simple_to] then
			@posts = Post.find(:all, 
				:conditions => ['sendFrom LIKE ? and sendTo LIKE ?' , "%#{params[:simple_from]}%", "%#{params[:simple_to]}%"])
		else
			@posts = Post.find(:all, 
				:conditions => ['sendFrom LIKE ? and sendTo LIKE ? and description LIKE ?' , "%#{params[:from]}%", "%#{params[:to]}%", "%#{params[:dateCreated]}%"])
		end
	end
end
