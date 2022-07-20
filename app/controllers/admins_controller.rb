class AdminsController < ApplicationController
	before_action :authenticate_admin!

	#Dashboard
	def index
		@posts = Post.active
	end

	def show
		
	end
end
