class FamiliesController < ApplicationController

def index
	if params[:search]
      empty_search = params[:search].empty?
    else
      empty_search = true
    end

    if empty_search
     @families = []

    else
     found_guests = Guest.all.search(params[:search])
	@families = Family.guest_families(found_guests)
    end
end



def edit
	family = Family.find(params[:id])
	@guests = family.guests
end

def show
	@family = Family.find(params[:id])
end

def update
	Guest.where(id: params[:attending_ids]).update_all(response: true)
  Guest.where(id: params[:absent_ids]).update_all(response: false)
	redirect_to family_path(params[:id])

end

def update_complete
	@family = Family.find(params[:id])

  if @family.update(complete: params[:complete])
    redirect_to :action => "thank_you", :controller => "families", :id => params[:id]
  else
    render 'show'
  end
end


end
