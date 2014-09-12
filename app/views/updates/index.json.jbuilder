json.array!(@updates) do |update|
  json.extract! update, :id, :user_id, :title, :post
  json.url update_url(update, format: :json)
end
