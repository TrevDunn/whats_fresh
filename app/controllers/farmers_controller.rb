class FarmersController < ApplicationController
	def index
		@farmers = Farmer.all
	end
	def show
		@farmer = Farmer.find(params[:id])
	end
	def new
		@farmer = Farmer.new
	end
	def edit
		@farmer = Farmer.find(params[:id])
	end
	def create
		@farmer = Farmer.new(farmer_params)
		@farmer.market_id = params[:market_id]
		if @farmer.save
			redirect_to market_path(@farmer.market)
		else
			redirect_to users_path
		end
	end
	def update
		id = params[:id]
		farmer = Farmer.find(id)
		if farmer.update(farmer_params)
			redirect_to edit_market_farmer_path(market_id)
		else
			redirect_to edit_market_farmer_path(market_id)
		end
	end
	def destroy
		@farmer = Farmer.find(params[:id])
		@farmer.destroy
		redirect_to markets_path
	end
	private

	# Attempt to link strong params to user instead of farmer,
	# 	As farmer is an object without sessions
	def farmer_params
		params.require(:farmer).permit(
		:name,
		:email,
		:website,
		:description,
		:user_match,
		:market_id,
		:user_match
		)
	end
end
