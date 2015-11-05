class UsersController < ApplicationController::Base
	def index
		@users = Users.all
	end
	def show
		@user = 
	end
	def new

	end
	def edit

	end
	def create

	end
	def update

	end
	def destroy

	end
	private
	def user_params
		params.require(:user).permit(
		:name,
		:email,
		:photo,
		# :location, (??)
		:password,
		:password_confirmation
		)
	end



end
