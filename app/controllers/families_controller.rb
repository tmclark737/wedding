class FamiliesController < ApplicationController

def index
	@families = Family.all
end

def edit
	family = Family.find(params[:id])
	@guests = family.guests
end

def show
end

def update

	Guest.where(id: params[:guest_ids]).update_all(response: true)
	redirect_to family_path(params[:id])

end


end
