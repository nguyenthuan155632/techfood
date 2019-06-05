class TopPagesController < ApplicationController

  def show
    @foods = Food.search_by_keyword('lau')
  end

end
