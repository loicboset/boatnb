class BoatsController < ApplicationController

	def show
		@boat = Boat.find(params[:id])
	end

	def create
		@boat = Boat.new(boat_params)
		@boat.location = params[:location]
		@boat.boat_space = params[:boat_space]
		@boat.guests = params[:guests]
		@boat.save
		redirect_to "/boats/#{@boat.id}"
	end

	def update
		@boat = Boat.find(params[:id])
		if @boat.update(boat_params)
			#if params[:location] == ""
			#	@boat.location = @boat.location_was
			#else 
			#	@boat.location = params[:location]
			#end
			@boat.boat_space = params[:boat_space]
			@boat.guests = params[:guests]
			@boat.name = params[:name]
			@boat.description = params[:description]
			@boat.price = params[:price]
			@boat.save
			redirect_to "/"
		else
			redirect_to "/boats/#{@boat.id}"
		end
		
		#
		
	end

	private
		def boat_params
			params.permit(:image)
		end

end
