json.extract! profile, :id, :avtar_data, :first_name, :last_name, :address, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
