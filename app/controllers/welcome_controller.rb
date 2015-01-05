class WelcomeController < ApplicationController
	
	
	def index
		if params[:simple_from] or params[:simple_to] then
			# query ="select * from posts where sendFrom like '%#{params[:simple_from]}%' and sendTo like '%#{params[:simple_to]}%'"
			# @posts = ActiveRecord::Base.connection.execute(query)
			@posts = Post.find(:all, 
				:conditions => ['sendFrom LIKE ? and sendTo LIKE ?' , "%#{params[:simple_from]}%", "%#{params[:simple_to]}%"])
		else
			@posts = Post.find(:all, 
				:conditions => ['sendFrom LIKE ? and sendTo LIKE ? and description LIKE ?' , "%#{params[:from]}%", "%#{params[:to]}%", "%#{params[:dateCreated]}%"])
		end
	end
end
