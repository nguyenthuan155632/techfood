# frozen_string_literal: true

require 'elasticsearch/model'

module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    index_name "#{Rails.env}-#{table_name}"
  end
end
