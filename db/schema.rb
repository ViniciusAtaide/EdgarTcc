# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140711120517) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacoes", force: true do |t|
    t.string   "tipoaval"
    t.float    "nota"
    t.integer  "matriculadisciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacoes", ["matriculadisciplina_id"], name: "index_avaliacoes_on_matriculadisciplina_id"

  create_table "disciplinas", force: true do |t|
    t.string   "nome"
    t.integer  "cargahoraria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculadisciplinas", force: true do |t|
    t.integer  "matricula_id"
    t.integer  "turmadisciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matriculadisciplinas", ["matricula_id"], name: "index_matriculadisciplinas_on_matricula_id"
  add_index "matriculadisciplinas", ["turmadisciplina_id"], name: "index_matriculadisciplinas_on_turmadisciplina_id"

  create_table "matriculas", force: true do |t|
    t.integer  "aluno_id"
    t.integer  "ano_letivo"
    t.date     "datacancelamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matriculas", ["aluno_id"], name: "index_matriculas_on_aluno_id"

  create_table "professores", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmadisciplinas", force: true do |t|
    t.integer  "turma_id"
    t.integer  "professor_id"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "turmadisciplinas", ["disciplina_id"], name: "index_turmadisciplinas_on_disciplina_id"
  add_index "turmadisciplinas", ["professor_id"], name: "index_turmadisciplinas_on_professor_id"
  add_index "turmadisciplinas", ["turma_id"], name: "index_turmadisciplinas_on_turma_id"

  create_table "turmas", force: true do |t|
    t.string   "descricao"
    t.string   "turno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
