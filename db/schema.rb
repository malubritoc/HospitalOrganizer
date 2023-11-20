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

ActiveRecord::Schema[7.0].define(version: 2023_11_20_232606) do
  create_table "cirurgias", force: :cascade do |t|
    t.date "data"
    t.time "hora_inicio"
    t.time "hora_fim"
    t.integer "sala_cirurgia_id", null: false
    t.integer "medico_id", null: false
    t.integer "paciente_id", null: false
    t.boolean "urgencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medico_id"], name: "index_cirurgias_on_medico_id"
    t.index ["paciente_id"], name: "index_cirurgias_on_paciente_id"
    t.index ["sala_cirurgia_id"], name: "index_cirurgias_on_sala_cirurgia_id"
  end

  create_table "material_cirurgicos", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nome"
    t.string "especialidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "leito_internacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sala_cirurgias", force: :cascade do |t|
    t.string "nome"
    t.string "especialidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cirurgias", "medicos"
  add_foreign_key "cirurgias", "pacientes"
  add_foreign_key "cirurgias", "sala_cirurgias"
end
