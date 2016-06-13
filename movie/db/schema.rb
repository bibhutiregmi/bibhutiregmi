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

ActiveRecord::Schema.define(version: 20160613095952) do

  create_table "actual_members", force: :cascade do |t|
    t.text     "sex"
    t.text     "name"
    t.integer  "age"
    t.integer  "cast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "actual_members", ["cast_id"], name: "index_actual_members_on_cast_id"

  create_table "casts", force: :cascade do |t|
    t.text     "name"
    t.integer  "age"
    t.text     "sex"
    t.text     "role"
    t.integer  "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "casts", ["film_id"], name: "index_casts_on_film_id"

  create_table "casts_films", force: :cascade do |t|
    t.integer "film_id"
    t.integer "cast_id"
  end

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.integer  "duration"
    t.integer  "rating"
    t.string   "genre"
    t.integer  "cast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "uid"
  end

  add_index "films", ["cast_id"], name: "index_films_on_cast_id"

  create_table "films_casts", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "cast_id"
  end

  create_table "moviecasts", force: :cascade do |t|
    t.integer  "movieid"
    t.string   "castid"
    t.string   "integer"
    t.integer  "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "moviecasts", ["film_id"], name: "index_moviecasts_on_film_id"

  create_table "movies_casts", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "cast_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.integer  "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["film_id"], name: "index_reviews_on_film_id"

end
