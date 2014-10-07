class WelcomeController < ApplicationController

	@@postsController

	def index
		@@postsController = PostsController.new
		@@postsController.show
		@posts = @@postsController.index
	end

	helper_method :search

	def search
		@@postsController = PostsController.new
		puts @posts = @@postsController.index.top
	end

end
