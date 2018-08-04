json.extract! student, :id, :full_name, :username, :password, :address, :school_level, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
