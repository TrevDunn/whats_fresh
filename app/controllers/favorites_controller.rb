class FavoritesController < ApplicationController
	def index
		@user = User.find(params[:id])
	end
	def new
		@favorite = Favorite.new
	end
	def create
		favorite = Favorite.new
		favorite.save
		redirect_to user_favorites_path
	end
	def destroy
		@favorite = favorite.find(params[:id])
		@favorite.destroy
		redirect_to user_favorites_path
	end
end
