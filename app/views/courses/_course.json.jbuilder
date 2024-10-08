json.extract! course, :id, :nombre, :descripcion, :fecha_inicio, :costo, :teacher_id, :created_at, :updated_at
json.url course_url(course, format: :json)
