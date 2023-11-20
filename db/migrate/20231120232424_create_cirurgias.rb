class CreateCirurgias < ActiveRecord::Migration[7.0]
  def change
    create_table :cirurgias do |t|
      t.date :data
      t.time :hora_inicio
      t.time :hora_fim
      t.references :sala_cirurgia, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true
      t.boolean :urgencia

      t.timestamps
    end
  end
end
