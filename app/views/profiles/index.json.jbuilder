json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :name, :headline, :bio, :address_one, :address_two, :city, :state, :postal, :email, :phone
  json.url profile_url(profile, format: :json)
end
