class Track < ActiveRecord::Base
  attr_accessible :song_id, :album_id

  belongs_to :album
	belongs_to :song
	has_one :title, :through => :song

	def title
		song.title
	end
end
