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

ActiveRecord::Schema.define(version: 2022_04_11_183742) do

  create_table "choices", force: :cascade do |t|
    t.string "choice_text"
  end

  create_table "situation_choices", force: :cascade do |t|
    t.integer "situation_id", null: false
    t.integer "choice_id", null: false
    t.boolean "outcome"
    t.index ["choice_id"], name: "index_situation_choices_on_choice_id"
    t.index ["situation_id"], name: "index_situation_choices_on_situation_id"
  end

  create_table "situations", force: :cascade do |t|
    t.string "story_text"
  end

  create_table "user_choices", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "choice_id", null: false
    t.index ["choice_id"], name: "index_user_choices_on_choice_id"
    t.index ["user_id"], name: "index_user_choices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password"
  end

  add_foreign_key "situation_choices", "choices"
  add_foreign_key "situation_choices", "situations"
  add_foreign_key "user_choices", "choices"
  add_foreign_key "user_choices", "users"
end
