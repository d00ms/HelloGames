json.array!(@users) do |user|
  json.extract! user, :id, :Website_Name, :Website_Address,
  json.url user_url(user, format: :json)
end
