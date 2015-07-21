class FamiliesController < ApplicationController

def index
	@families = Family.all
end

def edit
	@family = Family.find(params[:id])
end

def show
end

end
