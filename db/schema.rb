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

ActiveRecord::Schema.define(version: 20171022190331) do

  create_table "customers", force: :cascade do |t|
    t.string "customer_id"
    t.string "name_first"
    t.string "name_last"
    t.string "customer_created_date"
    t.string "address_street"
    t.string "address_email"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.boolean "active"
    t.string "last_date_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_id"
    t.string "product_id"
    t.string "payment_type_id"
    t.boolean "fulfilled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

end
