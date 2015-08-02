class Family < ActiveRecord::Base
	has_many :guests

	accepts_nested_attributes_for :guests#, :allow_destroy => true

	def self.guest_families(found_guests)
		family_ids = found_guests.all.map{|guest| guest.family}
		Family.where(id: family_ids).uniq
	end


end
