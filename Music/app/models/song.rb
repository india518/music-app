class Song < ActiveRecord::Base
  attr_accessible :title, :writer_id

	belongs_to :writer
	has_many :tracks
end
