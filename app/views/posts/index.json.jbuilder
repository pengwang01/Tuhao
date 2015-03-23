json.array!(@posts) do |post|
  json.extract! post, :startdate, :content, :headline, :media, :mediacaption, :mediacredit
  json.url post_url(post, format: :json)
end