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

ActiveRecord::Schema.define(version: 20161219182454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "ruc"
    t.text     "razon"
    t.text     "direccion"
    t.text     "obs"
    t.integer  "tipo",       default: 1
    t.integer  "origen",     default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_clients_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.date     "pfecha"
    t.string   "serie"
    t.string   "nfactu"
    t.integer  "client_id"
    t.float    "subtotal"
    t.integer  "origen"
    t.date     "mmes"
    t.integer  "moneda"
    t.float    "tc"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_items_on_client_id", using: :btree
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "paso", id: false, force: :cascade do |t|
    t.integer "id"
    t.text    "ruc"
    t.text    "razon"
    t.text    "direccion"
    t.text    "obs"
    t.integer "tipo"
    t.integer "origen"
    t.date    "fecha1"
    t.date    "fecha2"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "clients", "users"
  add_foreign_key "items", "clients"
  add_foreign_key "items", "users"
end
