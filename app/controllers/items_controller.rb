class ItemController < ApplicationController
	def new

	end
	def edit

	end
	def create
		favorite = Favorite.new
		favorite.save
		redirect_to market_farmer_items_path
	end
	def update

	end
	def destroy

	end
	private
	def item_params
		params.require(:item).permit(
		:name,
		:email,
		:photo,
		# :location, (??)
		:password,
		:password_confirmation
		)
	end
end
