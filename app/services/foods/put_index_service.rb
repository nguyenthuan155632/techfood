# frozen_string_literal: true

class Foods::PutIndexService < Patterns::Service

  BATCH_SIZE = 10

  def initialize(from: 1, to: Food.last.id)
    @from = from
    @to = to
  end

  def call
    ids = (from..to).to_a
    Food.__elasticsearch__.import(query: -> { where(id: ids) },
                                  batch_size: BATCH_SIZE,
                                  refresh: true)
  end

  private

  attr_reader :from, :to

end
