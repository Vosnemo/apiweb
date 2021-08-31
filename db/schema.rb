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


ActiveRecord::Schema.define(version: 2021_08_30_234752) do
ActiveRecord::Schema.define(version: 2021_08_31_010356) do


  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "bio"
    t.text "country"
    t.string "age"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name", null: false
    t.text "bio", default: "Biografia", null: false
    t.text "country", null: false
    t.string "age"
    t.boolean "is_writer", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end


  create_table "movies", force: :cascade do |t|
    t.string "name", null: false
    t.text "synopsis", default: "Synopsis Movie"
    t.text "genre", default: "Genre Movie"
    t.string "classification"
    t.float "score"
    t.string "duration", default: "0:00"
    t.string "year", default: "9999"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
