json.extract! student, :id, :nombre, :apellido, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
