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

ActiveRecord::Schema[7.1].define(version: 2024_03_14_154918) do
  create_table "links", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "url"
    t.string "title"
    t.string "description"
    t.string "image"
    t.integer "views_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "link_id", null: false
    t.string "user_agent"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_views_on_link_id"
  end

  add_foreign_key "views", "links"
end