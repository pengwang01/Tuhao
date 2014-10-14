class WelcomeController < ApplicationController
	@posts 
	def index
		if params[:search] then
			@posts = Post.find(:all, :conditions => ['sendFrom LIKE ?', "%#{params[:search]}%"])
		end	
	end

end
