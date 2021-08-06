json.extract! pet, :id, :name, :adoptions_id, :races_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
