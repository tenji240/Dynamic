json.array!(@postings) do |posting|
  json.extract! posting, :id, :skills, :description, :experience, :postition
  json.url posting_url(posting, format: :json)
end
