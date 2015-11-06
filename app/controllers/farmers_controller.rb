class FarmersController < ApplicationController
	def index
		@farmers = Farmer.all
	end
	def show
		@farmer = Farmer.find(params[:id])
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
	def method_name

	end
end
