json.array!(@educations) do |education|
  json.extract! education, :id, :school, :start_date, :end_date, :description
  json.url education_url(education, format: :json)
end
