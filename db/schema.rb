# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_08_172457) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.date "fecha_inicio"
    t.decimal "costo"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "material_id", null: false
    t.index ["material_id"], name: "index_courses_on_material_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "inscriptions", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_inscriptions_on_course_id"
    t.index ["student_id"], name: "index_inscriptions_on_student_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_materials_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "materials"
  add_foreign_key "courses", "teachers"
  add_foreign_key "inscriptions", "courses"
  add_foreign_key "inscriptions", "students"
  add_foreign_key "materials", "courses"
end
