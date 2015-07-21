class Guest < ActiveRecord::Base
  belongs_to :family


def self.search(search)
	where('first_name ILIKE ?', "%#{search}%")
end

end
