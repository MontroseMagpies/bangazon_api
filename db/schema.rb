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

ActiveRecord::Schema.define(version: 20171024191554) do

  create_table "computers", force: :cascade do |t|
    t.date "purchase_date"
    t.date "decommission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.float "expense_budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_computers", force: :cascade do |t|
    t.integer "computer_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_employee_computers_on_computer_id"
    t.index ["employee_id"], name: "index_employee_computers_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name_first"
    t.string "name_last"
    t.string "job_title"
    t.date "employee_hire_date"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "fulfilled"
    t.integer "payment_type_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["payment_type_id"], name: "index_orders_on_payment_type_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "payment_type"
    t.integer "account_number"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_payment_types_on_customer_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.float "product_price"
    t.string "product_description"
    t.integer "customer_id"
    t.integer "product_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_products_on_customer_id"
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  create_table "training_programs", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "course_title"
    t.string "instructor"
    t.integer "max_occupancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
