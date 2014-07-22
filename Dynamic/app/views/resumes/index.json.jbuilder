json.array!(@resumes) do |resume|
  json.extract! resume, :id, :first_name, :last_name, :email, :address, :city, :state, :zip, :career_statement
  json.url resume_url(resume, format: :json)
end
