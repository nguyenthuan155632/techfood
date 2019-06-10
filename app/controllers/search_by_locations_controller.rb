class SearchByLocationsController < ApplicationController

  def index
    render json: Food.elasticsearch(params[:keyword],
                                    coordinate: { longitude: params[:longitude],
                                                  latitude: params[:latitude] })
  end

end
