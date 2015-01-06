json.array!(@posts) do |post|
  json.extract! post, :title, :body, :user_id, :created_at
  json.key post.id
end
