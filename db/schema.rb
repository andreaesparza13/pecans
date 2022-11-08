ActiveRecord::Schema[7.0].define(version: 2022_11_02_210427) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_item_joins", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "cart_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_item_joins_on_cart_id"
    t.index ["item_id"], name: "index_cart_item_joins_on_item_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "total_cost"
    t.integer "total_items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item"
    t.integer "count"
    t.float "price"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cart_item_joins", "carts"
  add_foreign_key "cart_item_joins", "items"
  add_foreign_key "carts", "users"
end
