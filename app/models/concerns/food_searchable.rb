# frozen_string_literal: true

module FoodSearchable
  extend ActiveSupport::Concern

  included do
    include Searchable

    mappings dynamic: 'false' do
      indexes :id, type: 'integer'
      indexes :display_name, type: 'text'
      indexes :category_name, type: 'text'
      indexes :source_name, type: 'text'
      indexes :description, type: 'text'
      indexes :detail, type: 'text'
      indexes :address, type: 'text'
      indexes :phone_number, type: 'text'
      indexes :district, type: 'text'
      indexes :city, type: 'text'
      indexes :total_review, type: 'text'
      indexes :total_view, type: 'text'
      indexes :avg_rating, type: 'text'
      indexes :review_url, type: 'text'
      indexes :album_url, type: 'text'
      indexes :booking_url, type: 'text'
      indexes :delivery_url, type: 'text'
      indexes :thumbnail_url, type: 'text'
      indexes :detail_url, type: 'text'
      indexes :location, type: 'geo_point'
    end

    after_create_commit -> { ElasticsearchCreateIndexJob.perform_later(self.class.to_s, id) }
    after_update_commit -> { ElasticsearchUpdateIndexJob.perform_later(self.class.to_s, id) }

    # This method is for only test for now
    def self.match_all
      search_definition = Elasticsearch::DSL::Search.search do
        query do
          match_all
        end
      end
      __elasticsearch__.search(search_definition)
    end

    def as_indexed_json(_options = {})
      {
        id: id,
        display_name: display_name,
        category_name: categories.pluck(:display_name).join(', '),
        source_name: source.display_name,
        description: food_information.description,
        detail: food_information.detail,
        address: food_information.address,
        phone_number: food_information.phone_number,
        district: food_information.district,
        city: food_information.city,
        total_review: food_information.total_review,
        total_view: food_information.total_view,
        avg_rating: food_information.avg_rating,
        review_url: food_information.review_url,
        album_url: food_information.album_url,
        booking_url: food_information.booking_url,
        delivery_url: food_information.delivery_url,
        thumbnail_url: food_information.thumbnail_url,
        detail_url: food_information.detail_url,
        location: {
          lat: food_information.latitude.to_f,
          lon: food_information.longitude.to_f
        }
      }
    end
  end
end