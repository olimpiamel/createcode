json.extract! profile, :id, :name, :alias, :email, :userid, :created_at, :updated_at
json.url profile_url(profile, format: :json)
