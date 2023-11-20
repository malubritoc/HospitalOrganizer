class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :leito_internacao

      t.timestamps
    end
  end
end
