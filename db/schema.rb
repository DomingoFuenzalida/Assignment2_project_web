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

ActiveRecord::Schema[7.1].define(version: 2024_04_30_202057) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "board_name", null: false
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_boards_on_admin_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "card_name", null: false
    t.bigint "list_id"
    t.string "card_title", null: false
    t.string "card_description", null: false
    t.bigint "user_informer_id", null: false
    t.bigint "user_assignee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_cards_on_list_id"
    t.index ["user_assignee_id"], name: "index_cards_on_user_assignee_id"
    t.index ["user_informer_id"], name: "index_cards_on_user_informer_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_members_on_board_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name", null: false
    t.bigint "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_states_on_board_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "boards", "users", column: "admin_id"
  add_foreign_key "cards", "users", column: "user_assignee_id"
  add_foreign_key "cards", "users", column: "user_informer_id"
end
