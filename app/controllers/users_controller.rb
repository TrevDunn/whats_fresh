class UsersController < ApplicationController

  before_action :authorize, except: [:index, :new, :create]

	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
	end
	def new
		@user = User.new
	end
	def edit
		@user = User.find(params[:id])
	end
	def create
		user = User.new(user_params)
		if user.save
			redirect_to ('/')
		else
			redirect_to ('/users/new')
		end
	end
	def update
		id = params[:id]
		user = User.find(id)
		if user.update(user_params)
			redirect_to ('/user')
		else
			redirect_to
		end
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to '/login'
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
