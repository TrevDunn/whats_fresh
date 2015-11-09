class MarketsController < ApplicationController

  before_action :authorize, except: [:index]

	def index
		@markets = Market.all
	end
	def show
		@market = Market.find(params[:id])
		@farmer = Farmer.all

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
