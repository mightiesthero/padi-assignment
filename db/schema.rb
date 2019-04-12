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

ActiveRecord::Schema.define(version: 2019_04_12_124524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_images", force: :cascade do |t|
    t.string "name"
    t.binary "img"
    t.text "description"
    t.bigint "survey_site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_site_id"], name: "index_survey_images_on_survey_site_id"
  end

  create_table "survey_sites", force: :cascade do |t|
    t.string "clientname"
    t.string "address"
    t.string "city"
    t.string "longitude"
    t.string "latitude"
    t.string "status"
    t.integer "sale_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_survey_sites_on_user_id"
  end

  create_table "survey_technicians", force: :cascade do |t|
    t.bigint "survey_site_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_site_id"], name: "index_survey_technicians_on_survey_site_id"
    t.index ["user_id"], name: "index_survey_technicians_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  add_foreign_key "survey_images", "survey_sites"
  add_foreign_key "survey_sites", "users"
  add_foreign_key "survey_technicians", "survey_sites"
  add_foreign_key "survey_technicians", "users"
  add_foreign_key "users", "users"
end
