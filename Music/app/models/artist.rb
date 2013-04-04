class Artist < ActiveRecord::Base
  attr_accessible :name, :date_of_birth, :gender_id

  belongs_to :gender
  has_many :memberships
	has_many :bands, :through => :memberships

	def to_s
		name
	end
end
