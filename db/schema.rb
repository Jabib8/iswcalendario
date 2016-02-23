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

ActiveRecord::Schema.define(version: 20160223220805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aula_labs", force: true do |t|
    t.integer  "recintos_id"
    t.string   "descripcion"
    t.string   "observacion"
    t.integer  "personas_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carreras", force: true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", force: true do |t|
    t.string   "descripcion"
    t.integer  "carreras_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "has_carrera_cursos", force: true do |t|
    t.integer  "carreras_id"
    t.integer  "cursos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_carrera_cursos", ["carreras_id"], name: "index_has_carrera_cursos_on_carreras_id", using: :btree
  add_index "has_carrera_cursos", ["cursos_id"], name: "index_has_carrera_cursos_on_cursos_id", using: :btree

  create_table "has_persona_carreras", force: true do |t|
    t.integer  "personas_id"
    t.integer  "cursos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_persona_carreras", ["cursos_id"], name: "index_has_persona_carreras_on_cursos_id", using: :btree
  add_index "has_persona_carreras", ["personas_id"], name: "index_has_persona_carreras_on_personas_id", using: :btree

  create_table "has_persona_cursos", force: true do |t|
    t.integer  "personas_id"
    t.integer  "cursos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_persona_cursos", ["cursos_id"], name: "index_has_persona_cursos_on_cursos_id", using: :btree
  add_index "has_persona_cursos", ["personas_id"], name: "index_has_persona_cursos_on_personas_id", using: :btree

  create_table "has_recinto_horarios", force: true do |t|
    t.integer  "horarios_id"
    t.integer  "recintos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "has_recinto_horarios", ["horarios_id"], name: "index_has_recinto_horarios_on_horarios_id", using: :btree
  add_index "has_recinto_horarios", ["recintos_id"], name: "index_has_recinto_horarios_on_recintos_id", using: :btree

  create_table "horarios", force: true do |t|
    t.string   "nombre"
    t.date     "horario_inicio"
    t.date     "horario_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodos", force: true do |t|
    t.string   "nombre"
    t.boolean  "estado"
    t.date     "fecha_inicio"
    t.date     "fecha_final"
    t.integer  "aula_labs_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.boolean  "estado"
    t.string   "celular"
    t.string   "correo"
    t.string   "contrasena"
    t.integer  "carreras_id"
    t.integer  "cursos_id"
    t.string   "perfil"
    t.string   "tipo_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recintos", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "horarios_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recintos", ["horarios_id"], name: "index_recintos_on_horarios_id", using: :btree

end
