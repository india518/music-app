class Artist < ActiveRecord::Base
  attr_accessible :name, :date_of_birth, :gender_id

  belongs_to :gender
  has_many :memberships
	has_many :bands, :through => :memberships
	has_many :songs, :foreign_key => :writer_id

	def to_s
		name
	end
end
