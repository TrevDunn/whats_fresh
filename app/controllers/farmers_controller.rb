class FarmersController < ApplicationController
	def index
		@farmers = Farmer.all
		redirect_to markets_path
	end
	def show
		@market = Market.find(params[:market_id])
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
		@farmer.user_id = current_user.id
		if @farmer.save
			redirect_to market_path(@farmer.market)
		else
			redirect_to users_path
		end
	end
	def update
		# id = params[:id]
		farmer = Farmer.find(params[:farmer_id])
		farmer.user_id = current_user.id
		if farmer.update(farmer_params)
			redirect_to "/markets/#{farmer.market_id}/farmers/#{farmer.id}"
		else
			redirect_to "/markets/#{farmer.market_id}/farmers/#{farmer.id}"
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
		:user_id,
		:market_id,
		:photo,
		:small_desc
		)
	end
end
