json.extract! suivi, :id, :enfant_id, :temps_endormissement, :heure_endormissement, :created_at, :updated_at
json.url suivi_url(suivi, format: :json)
