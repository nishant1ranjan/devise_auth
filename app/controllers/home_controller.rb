class HomeController < ApplicationController
	before_action :authenticate_user!
	def index
	end
	def show
		@user = User.find_by(id: current_user.id)
	end
	def users_all
		current_user.admin ? (@users = User.all.with_attached_image) : (redirect_to root_path)
	end
end
