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

ActiveRecord::Schema.define(version: 20191013180724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", id: :bigserial, force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "periodo",                default: 1,  null: false
    t.integer  "categoria",              default: 3,  null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

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

  create_table "details", force: :cascade do |t|
    t.text     "descripcion"
    t.float    "cantidad"
    t.float    "precio"
    t.float    "monto"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.index ["item_id"], name: "index_details_on_item_id", using: :btree
    t.index ["product_id"], name: "index_details_on_product_id", using: :btree
    t.index ["user_id"], name: "index_details_on_user_id", using: :btree
  end

  create_table "elements", id: :bigserial, force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "orden1"
    t.integer  "orden2"
    t.integer  "fac1"
    t.bigint   "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_elements_on_admin_user_id", using: :btree
  end

  create_table "formulas", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "material"
    t.float    "cantidad"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "descripcion"
    t.string   "indicacion"
    t.integer  "orden"
    t.index ["product_id"], name: "index_formulas_on_product_id", using: :btree
    t.index ["user_id"], name: "index_formulas_on_user_id", using: :btree
  end

  create_table "headers", id: :bigserial, force: :cascade do |t|
    t.date     "fecha1"
    t.date     "dateh01"
    t.date     "dateh02"
    t.date     "dateh03"
    t.integer  "inth01"
    t.integer  "inth02"
    t.integer  "inth03"
    t.integer  "inth04"
    t.integer  "inth05"
    t.integer  "inth06"
    t.integer  "inth07"
    t.integer  "inth08"
    t.string   "strih01"
    t.string   "strih02"
    t.string   "strih03"
    t.string   "strih04"
    t.bigint   "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id"], name: "index_headers_on_admin_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.date     "pfecha"
    t.string   "serie"
    t.string   "nfactu"
    t.integer  "client_id",  default: 881
    t.float    "subtotal"
    t.integer  "origen"
    t.date     "mmes"
    t.integer  "moneda",     default: 1
    t.float    "tc",         default: 0.0
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "empresa"
    t.integer  "sele"
    t.integer  "sele1"
    t.string   "sele2"
    t.string   "sele3"
    t.index ["client_id"], name: "index_items_on_client_id", using: :btree
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "movements", id: :bigserial, force: :cascade do |t|
    t.bigint   "header_id"
    t.integer  "intm01"
    t.integer  "intm02"
    t.integer  "intm03"
    t.integer  "intm04"
    t.string   "strim01"
    t.string   "strim02"
    t.string   "strim03"
    t.string   "strim04"
    t.float    "floam01"
    t.float    "floam02"
    t.float    "floam03"
    t.float    "floam04"
    t.bigint   "admin_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "intm05"
    t.integer  "intm06"
    t.integer  "intm07"
    t.integer  "intm08"
    t.integer  "intm09"
    t.integer  "intm10"
    t.float    "floam05"
    t.float    "floam06"
    t.float    "floam07"
    t.float    "floam08"
    t.float    "floam09"
    t.float    "floam10"
    t.index ["admin_user_id"], name: "index_movements_on_admin_user_id", using: :btree
    t.index ["header_id"], name: "index_movements_on_header_id", using: :btree
  end

  create_table "parameters", force: :cascade do |t|
    t.integer  "empresa"
    t.integer  "origen"
    t.date     "mes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.float    "precio"
    t.integer  "moneda"
    t.integer  "unidad"
    t.integer  "client_id"
    t.string   "material"
    t.float    "lote"
    t.integer  "proceso"
    t.integer  "equivalente"
    t.float    "conversion"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.float    "peso"
    t.boolean  "activo",      default: true
    t.integer  "user_id"
    t.index ["client_id"], name: "index_products_on_client_id", using: :btree
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "clients", "users"
  add_foreign_key "details", "items"
  add_foreign_key "details", "products"
  add_foreign_key "details", "users"
  add_foreign_key "elements", "admin_users"
  add_foreign_key "formulas", "products"
  add_foreign_key "formulas", "users"
  add_foreign_key "headers", "admin_users"
  add_foreign_key "items", "clients"
  add_foreign_key "items", "users"
  add_foreign_key "movements", "admin_users"
  add_foreign_key "movements", "headers"
  add_foreign_key "products", "clients"
  add_foreign_key "products", "users"
end
