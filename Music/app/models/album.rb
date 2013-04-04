class Album < ActiveRecord::Base
  attr_accessible :title, :band_id, :release_date

	belongs_to :band
	has_many :tracks
	has_many :songs, :through => :tracks

end
