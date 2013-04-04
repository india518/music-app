class BandsController < ApplicationController
	def index
		@bands = Band.all
	end

	def show
		@band = Band.find(params[:id])
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.new(params[:band])
		if @band.save
			redirect_to band_url(@band)
		else
			render :new
		end
	end

	def edit
		@band = Band.find(params[:id])
	end

	def update
		@band = Band.find(params[:id])
	  @band.update_attributes(params[:band])
		redirect_to band_url(@band)
	end

	def destroy
		@band = Band.find(params[:id])
		@band.destroy
		redirect_to bands_url
	end
end
