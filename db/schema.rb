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

ActiveRecord::Schema.define(version: 20170626204127) do

  create_table "admin_area_level1s", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_admin_area_level1s_on_country_id"
  end

  create_table "admin_area_level2s", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.integer "admin_area_level1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_area_level1_id"], name: "index_admin_area_level2s_on_admin_area_level1_id"
  end

  create_table "administrative_area_level1s", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "short_name", default: ""
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_administrative_area_level1s_on_country_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "route"
    t.string "street_number"
    t.string "postal_code"
    t.string "hamlet"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.integer "locality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_buildings_on_locality_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "short_name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.integer "admin_area_level2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_area_level2_id"], name: "index_localities_on_admin_area_level2_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "second_name", default: ""
    t.string "surname", default: "", null: false
    t.string "phone_number", default: ""
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
