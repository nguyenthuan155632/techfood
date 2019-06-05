class SearchByKeywordsController < ApplicationController

  def index
    render json: Food.elasticsearch(params[:keyword])
  end

end
