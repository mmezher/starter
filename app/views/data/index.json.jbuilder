json.array!(@data) do |datum|
  json.extract! datum, :id, :user_id, :csv_id
  json.url datum_url(datum, format: :json)
end
