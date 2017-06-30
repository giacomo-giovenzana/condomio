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

ActiveRecord::Schema.define(version: 20170630203036) do

  create_table "addresses", force: :cascade do |t|
    t.string "locality"
    t.string "short_name"
    t.string "route"
    t.string "street_number"
    t.string "postal_code"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.integer "admin_area_level2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_area_level2_id"], name: "index_addresses_on_admin_area_level2_id"
  end

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

  create_table "apartment_owners", force: :cascade do |t|
    t.integer "user_id"
    t.integer "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_apartment_owners_on_apartment_id"
    t.index ["user_id"], name: "index_apartment_owners_on_user_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "name"
    t.integer "division_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_id"], name: "index_apartments_on_division_id"
  end

  create_table "building_admins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_admins_on_building_id"
    t.index ["user_id"], name: "index_building_admins_on_user_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_buildings_on_address_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "user_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "short_name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.integer "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_divisions_on_building_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "assignee_id"
    t.integer "building_id"
    t.string "title"
    t.string "description"
    t.integer "severity"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignee_id"], name: "index_tickets_on_assignee_id"
    t.index ["building_id"], name: "index_tickets_on_building_id"
    t.index ["reporter_id"], name: "index_tickets_on_reporter_id"
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
