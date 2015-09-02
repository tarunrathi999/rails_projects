json.array!(@loos) do |loo|
  json.extract! loo, :id, :lat, :lng, :name, :description, :open_hours, :closing_hours, :open_closing_note, :managed_by, :loo_type, :genders, :no_of_toilets, :no_of_bathrooms, :no_of_urinals, :paid
  json.url loo_url(loo, format: :json)
end
