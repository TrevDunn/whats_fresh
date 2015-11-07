class MarketsController < ApplicationController
	def index
		@markets = Market.all
	end
	def show
		@market = Market.find(params[:id])
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
end
