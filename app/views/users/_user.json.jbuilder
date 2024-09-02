json.extract! user, :id, :prenom, :nom, :mail, :created_at, :updated_at
json.url user_url(user, format: :json)
