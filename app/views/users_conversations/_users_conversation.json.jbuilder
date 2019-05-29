json.extract! users_conversation, :id, :user_id, :conversation_id, :created_at, :updated_at
json.url users_conversation_url(users_conversation, format: :json)
