class CreateMaterials < ActiveRecord::Migration[7.2]
  def change
    create_table :materials do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
