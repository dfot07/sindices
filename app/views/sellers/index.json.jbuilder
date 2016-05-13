json.array!(@sellers) do |seller|
  json.extract! seller, :id, :lastnamev, :namev, :lastnamec, :namec, :inscription, :dateinscription, :user_id
  json.url seller_url(seller, format: :json)
end
