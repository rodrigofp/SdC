# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_25_144638) do

  create_table "atendimento_chamados", force: :cascade do |t|
    t.integer "chamado_id"
    t.integer "usuario_id"
    t.integer "base_id"
    t.datetime "data"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status_id"
    t.index ["base_id"], name: "index_atendimento_chamados_on_base_id"
    t.index ["chamado_id"], name: "index_atendimento_chamados_on_chamado_id"
    t.index ["status_id"], name: "index_atendimento_chamados_on_status_id"
    t.index ["usuario_id"], name: "index_atendimento_chamados_on_usuario_id"
  end

  create_table "bases", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chamados", force: :cascade do |t|
    t.integer "usuario_id"
    t.datetime "data_abertura"
    t.datetime "data_fechamento"
    t.integer "tipo_chamado_id"
    t.integer "prioridade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "base_id"
    t.integer "cliente_modulo_id"
    t.integer "numerador"
    t.index ["base_id"], name: "index_chamados_on_base_id"
    t.index ["cliente_modulo_id"], name: "index_chamados_on_cliente_modulo_id"
    t.index ["prioridade_id"], name: "index_chamados_on_prioridade_id"
    t.index ["tipo_chamado_id"], name: "index_chamados_on_tipo_chamado_id"
    t.index ["usuario_id"], name: "index_chamados_on_usuario_id"
  end

  create_table "cliente_modulos", force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "modulo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_cliente_modulos_on_cliente_id"
    t.index ["modulo_id"], name: "index_cliente_modulos_on_modulo_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string "contato"
    t.integer "tipo_contato_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_contato_id"], name: "index_contatos_on_tipo_contato_id"
    t.index ["usuario_id"], name: "index_contatos_on_usuario_id"
  end

  create_table "modulos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prioridades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_chamados", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_contatos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "senha"
    t.string "cpf"
    t.integer "tipo_usuario_id"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_usuarios_on_cliente_id"
    t.index ["tipo_usuario_id"], name: "index_usuarios_on_tipo_usuario_id"
  end

end
