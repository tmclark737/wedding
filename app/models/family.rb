class Family < ActiveRecord::Base
	has_many :guests



	def self.guest_families(found_guests)
		family_ids = found_guests.all.map{|guest| guest.family}
		Family.where(id: family_ids).uniq
	end


end
