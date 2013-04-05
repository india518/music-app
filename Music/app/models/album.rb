class Album < ActiveRecord::Base
  attr_accessible :title, :band_id, :release_date, :song_ids, :is_live

	belongs_to :band
	has_many :tracks
	has_many :songs, :through => :tracks

	def is_live?
		is_live
	end
end
