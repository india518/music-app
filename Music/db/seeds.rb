# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
	def rand_time
	  Time.at(rand * (1365093314))
	end

	["Cher","Madonna","Prince","Beyonce","Sting","Jon Bon Jovi"].each do |name|
		Artist.create(name: name, gender_id: [1,2].sample, date_of_birth: rand_time)
	end

	["Radiohead", "Rolling Stones", "The Police", "Metallica"].each do |band|
		Band.create(name: band, genre: ["Rock", "Metal", "Country"].sample,
		            location: ["Liverpool", "Chicago", "Bay Area"].sample)
	end

	[[1,3],[4,3],[2,1],[0,0],[2,0],[4,2],[5,3]].each do |x,y|
		start_date = rand_time
	  Membership.create(artist_id: x, band_id: y,
		                  start_date: start_date, end_date: start_date+1.year)
	end

	["Male", "Female"].each do |name|
		g = Gender.new
		g.gender_name = name
		g.save
	end
end