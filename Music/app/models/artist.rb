class Artist < ActiveRecord::Base
  attr_accessible :name, :date_of_birth, :gender

  has_many :memberships
	has_many :bands, :through => :memberships

end
