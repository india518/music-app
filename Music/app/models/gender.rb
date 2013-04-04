class Gender < ActiveRecord::Base

	def to_s
		gender_name
	end
end
