class TracksController < ApplicationController
	def index
		@tracks = Track.all
	end

	def new
		@track = Track.new
	end

	def create
		@track = Track.new(params[:track])
		if @track.save
			redirect_to track_url(@track)
		else
			render :new
		end
	end

	def show
		@track = Track.find(params[:id])
		@title = @track.song.title
	end
end
