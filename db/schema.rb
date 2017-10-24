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

ActiveRecord::Schema.define(version: 20171023235408) do

  create_table "customers", force: :cascade do |t|
    t.string "name_first"
    t.string "name_last"
    t.string "address_street"
    t.string "address_email"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.boolean "active"
    t.date "last_date_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "payment_type"
    t.integer "account_number"
    t.integer "Customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_payment_types_on_Customer_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.float "product_price"
    t.string "product_description"
    t.integer "Customer_id"
    t.integer "ProductType_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_products_on_Customer_id"
    t.index ["ProductType_id"], name: "index_products_on_ProductType_id"
  end

end
