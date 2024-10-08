json.extract! teacher, :id, :nombre, :apellido, :email, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
