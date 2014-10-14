class WelcomeController < ApplicationController
	@posts 
	def index
		if params[:search] then
			@posts = Post.find(:all, :conditions => ['sendFrom LIKE ?', "%#{params[:search]}%"])

		else
			@posts = Post.all
		end	
	end

end
