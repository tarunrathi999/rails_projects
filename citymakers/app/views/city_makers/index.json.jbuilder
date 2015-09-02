json.array!(@city_makers) do |city_maker|
  json.extract! city_maker, :id, :name, :description, :lat, :lng, :address1, :address2, :city, :state, :country, :phone, :timings, :note
  json.url city_maker_url(city_maker, format: :json)
end
