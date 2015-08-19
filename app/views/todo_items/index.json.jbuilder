json.array!(@todo_item) do |todo_item|
  json.extract! todo_item, :id, :title, :description
  json.url todo_item_url(todo_list, format: :json)
end
