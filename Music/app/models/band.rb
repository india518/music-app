class Band < ActiveRecord::Base
  attr_accessible :name, :genre, :location

  has_many :memberships
	has_many :members, :through => :memberships, :source => :artist

	def to_s
		name
	end
end
