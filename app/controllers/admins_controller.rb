class AdminsController < ApplicationController
	before_action :authenticate_admin!
	before_action :set_admin, only: [:profile]

	#Dashboard
	def index
		@posts = Post.active
	end

	def profile
		
	end
	def set_admin
		@admin = Admin.find_by_username(params[:username])
	end
end
