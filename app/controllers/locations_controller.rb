class LocationsController < ApplicationController

  # GET /locations
  # GET /locations.json
  def index
  
    if params[:set_locale]
      redirect_to locations_path(:locale => params[:set_locale])
    else
      @locations = Location.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @locations }
      end  
    end
  end


end
