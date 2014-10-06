class WelcomeController < ApplicationController

	

	def index
		postsController = PostsController.new
		postsController.show
		@posts = postsController.index
	end
	
end
