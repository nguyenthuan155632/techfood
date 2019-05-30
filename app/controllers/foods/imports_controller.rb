class Foods::ImportsController < ApplicationController
  before_action :hierarchical_categories, only: [:new]

  def new; end
  
  def create
    food = ::Crawler::FoodyService.call(parameters).result
    redirect_to food_path(food)
  end

  private

    def hierarchical_categories
      @hierarchical_categories = Category.arrange(order: :display_name)
    end

    def parameters
      params.permit(:data_json, :source_id, :category_id, :user_id)
    end
  
end
