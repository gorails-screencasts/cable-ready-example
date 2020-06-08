json.extract! card, :id, :title, :description, :created_at, :updated_at
json.url card_url(card, format: :json)
