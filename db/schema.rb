# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100505080600) do

  create_table "abcs", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "account_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.integer  "account_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "district"
    t.string   "state"
    t.string   "pincode"
    t.string   "tin_no"
    t.string   "pan_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "account_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.decimal  "sale_price"
    t.decimal  "purchase_price"
    t.decimal  "quantity"
    t.string   "batch_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journal_entries", :force => true do |t|
    t.date     "date"
    t.string   "narration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journal_lines", :force => true do |t|
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "purchase_price"
    t.decimal  "sale_price"
    t.decimal  "vat_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sundry_debtors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telephones", :force => true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
