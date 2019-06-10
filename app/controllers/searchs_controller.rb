class SearchsController < ApplicationController

  def index
    @sources = Source.all
  end

end
