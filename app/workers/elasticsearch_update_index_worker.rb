# frozen_string_literal: true

class ElasticsearchUpdateIndexWorker
  include Sidekiq::Worker

  def perform(klass, record_id, _options = {})
    model = klass.constantize
    record = model.find(record_id)
    record.__elasticsearch__.update_document
  rescue ActiveRecord::RecordNotFound
    model.__elasticsearch__.client.delete index: model.index_name,
                                          type: model.document_type,
                                          id: record_id
  end

end
