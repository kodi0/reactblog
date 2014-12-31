json.array!(@posts) do |post|
  json.extract! post, :title, :body, :created_at
  json.key post.id
end
