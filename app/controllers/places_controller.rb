class PlacesController < ApplicationController

	def index
		params[:page] ||= 1
		@places = Place.paginate(:page => params[:page])
	end

	def new
		@place = Place.new
	end

end
