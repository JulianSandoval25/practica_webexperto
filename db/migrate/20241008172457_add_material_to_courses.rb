class AddMaterialToCourses < ActiveRecord::Migration[7.2]
  def change
    add_reference :courses, :material, null: false, foreign_key: true
  end
end
