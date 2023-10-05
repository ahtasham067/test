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

ActiveRecord::Schema[7.0].define(version: 2023_10_05_132614) do
  create_table "discount_promotion_codes", force: :cascade do |t|
    t.string "name"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.float "total_price"
    t.integer "order_id"
    t.integer "pizza_price_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_order_items_on_ingredient_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["pizza_price_id"], name: "index_order_items_on_pizza_price_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.integer "order_status"
    t.integer "discount_id"
    t.integer "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_orders_on_discount_id"
    t.index ["promotion_id"], name: "index_orders_on_promotion_id"
  end

  create_table "pizza_prices", force: :cascade do |t|
    t.float "price"
    t.integer "pizza_size_id"
    t.integer "pizza_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_id"], name: "index_pizza_prices_on_pizza_id"
    t.index ["pizza_size_id"], name: "index_pizza_prices_on_pizza_size_id"
  end

  create_table "pizza_sizes", force: :cascade do |t|
    t.string "pizza_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
