class Foods::ImportsController < ApplicationController
  before_action :hierarchical_categories, only: [:new]

  def new; end
  
  def create
    ::Crawler::FoodyService.call(parameters)
    redirect_to new_food_import_path
  end

  private

    def hierarchical_categories
      @hierarchical_categories = Category.arrange(order: :display_name)
    end

    def parameters
      params.permit(:data_json, :source_id, :user_id, category: [])
    end
  
end
