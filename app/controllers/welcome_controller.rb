class WelcomeController < ApplicationController

	def index
		if params[:id] then
			@posts = Post.find_all_by_id(params[:id])

		else
			@posts = Post.all
		end	
	end

end
