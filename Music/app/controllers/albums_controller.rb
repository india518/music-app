class AlbumsController < ApplicationController
	def index
		@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params[:album])
		if @album.save
			redirect_to album_url(@album)
		else
			render :new
		end
	end

	def edit
		@album = Album.find(params[:id])
	end


	def update
		@album = Album.find(params[:id])
		@album.update_attributes(params[:album])
		redirect_to album_url(@album)
	end

	def destroy
		@album = Album.find(params[:id])
		@album.destroy
		redirect_to albums_url
	end
end
