class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_inicio
      t.decimal :costo
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
