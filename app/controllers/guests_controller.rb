class GuestsController < ApplicationController

def index
	@good_guests = Guest.all.where.not(response: nil)
	@bad_guests = Guest.all.where(response: nil)
end

end