class FavoritesController < ApplicationController
	def index
		@user = User.find(params[:id])
	end
	def new
		@favorite = Favorite.new
	end
	def create
		favorite = Favorite.new(favorite_params)
		if favorite.save
			redirect_to ('/user/')
		else
			redirect_to ('/users/new')
		end
	end
	def destroy

	end
end
