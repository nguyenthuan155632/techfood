# frozen_string_literal: true

namespace :food do
  desc 'rake task to import and create index for food'
  task es_bulk_import: :environment do
    ::Foods::PutIndexService.call
  end

  task :create_new_index, %i[force] => [:environment] do |_t, args|
    if args[:force] == 'true'
      Food.__elasticsearch__.create_index! force: true
    else
      Food.__elasticsearch__.create_index!
    end
  end
end
