class Membership < ActiveRecord::Base
  attr_accessible :artist_id, :band_id, :start_date, :end_date

	belongs_to :band
	belongs_to :artist
end
