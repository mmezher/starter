json.array!(@darums) do |darum|
  json.extract! darum, :id, :user_id, :csv_id
  json.url darum_url(darum, format: :json)
end
