class CreateSalaCirurgias < ActiveRecord::Migration[7.0]
  def change
    create_table :sala_cirurgias do |t|
      t.string :nome
      t.string :especialidade

      t.timestamps
    end
  end
end
