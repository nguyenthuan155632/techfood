json.extract! note, :id, :content, :conversation_id, :created_at, :updated_at
json.url note_url(note, format: :json)
