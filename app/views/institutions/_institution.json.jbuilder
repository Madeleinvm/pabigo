json.extract! institution, :id, :name, :address, :phone, :email, :web, :created_at, :updated_at
json.url institution_url(institution, format: :json)
