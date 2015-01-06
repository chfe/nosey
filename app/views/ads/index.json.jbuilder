json.array!(@ads) do |ad|
  json.extract! ad, :id, :text, :user_id, :tenant_id
  json.url ad_url(ad, format: :json)
end
