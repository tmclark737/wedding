class Guest < ActiveRecord::Base
  belongs_to :family

  #validates :response, presence: true

def self.search(search)
	where('full_name ILIKE ?', "%#{search}%")
end

end
