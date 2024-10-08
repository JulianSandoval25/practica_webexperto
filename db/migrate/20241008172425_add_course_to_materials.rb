class AddCourseToMaterials < ActiveRecord::Migration[7.2]
  def change
    add_reference :materials, :course, null: true, foreign_key: true
  end
end
