class SearchsController < ApplicationController

  def index
    @foods = if params[:keyword].present?
               Food.elasticsearch(params[:keyword],
                                  coordinate: { longitude: params[:longitude],
                                                latitude: params[:latitude] })
             else
               []
             end
  end

end
