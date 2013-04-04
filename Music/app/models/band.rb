class Band < ActiveRecord::Base
  attr_accessible :name, :genre, :location

  has_many :memberships
	has_many :artists, :through => :memberships

	def to_s
		name
	end
end
