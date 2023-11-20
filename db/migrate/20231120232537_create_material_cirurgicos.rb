class CreateMaterialCirurgicos < ActiveRecord::Migration[7.0]
  def change
    create_table :material_cirurgicos do |t|
      t.string :nome
      t.string :tipo

      t.timestamps
    end
  end
end
