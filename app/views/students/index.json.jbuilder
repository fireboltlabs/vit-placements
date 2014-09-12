json.array!(@students) do |student|
  json.extract! student, :id, :regd_no, :first_name, :middle_name, :last_name, :father_name, :email, :mobile, :father_mobile, :placement, :jkc, :cilvils, :further_studies
  json.url student_url(student, format: :json)
end
