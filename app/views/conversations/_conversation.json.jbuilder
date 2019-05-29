json.extract! conversation, :id, :channel, :mode, :status, :expire_at, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
