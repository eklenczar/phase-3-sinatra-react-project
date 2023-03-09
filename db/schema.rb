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

ActiveRecord::Schema.define(version: 2023_03_09_174255) do

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.integer "phone"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date_ordered"
    t.date "pick_up_date"
    t.integer "customer_id"
  end

  create_table "pies", force: :cascade do |t|
    t.text "flavor"
    t.float "price"
    t.integer "order_id"
  end

end
