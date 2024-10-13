class CreateInscriptions < ActiveRecord::Migration[7.2]
  def change
    create_join_table :courses, :students
  end
end
