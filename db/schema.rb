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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130728091540) do

  create_table "actors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nacionalidad"
    t.string   "url_pefil"
    t.date     "fecha_nacimiento"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "actors_films", :force => true do |t|
    t.integer "actor_id"
    t.integer "film_id"
  end

  add_index "actors_films", ["actor_id", "film_id"], :name => "index_actors_films_on_actor_id_and_film_id", :unique => true
  add_index "actors_films", ["actor_id"], :name => "index_actors_films_on_actor_id"
  add_index "actors_films", ["film_id"], :name => "index_actors_films_on_film_id"

  create_table "movies", :force => true do |t|
    t.string   "titulo"
    t.string   "categoria"
    t.boolean  "estreno"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "duration"
    t.string   "url_portada"
  end

end
