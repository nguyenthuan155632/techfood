# frozen_string_literal: true

class ElasticsearchCreateIndexWorker
  include Sidekiq::Worker

  def perform(klass, record_id, _options = {})
    model = klass.constantize
    record = model.find(record_id)
    record.__elasticsearch__.index_document
  rescue ActiveRecord::RecordNotFound
    model.__elasticsearch__.client.delete index: model.index_name,
                                          type: model.document_type,
                                          id: record_id
  end

end
