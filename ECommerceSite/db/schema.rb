# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121120224840) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressid"
    t.string   "streetname"
    t.integer  "streetnumber"
    t.string   "city"
    t.string   "province"
    t.string   "postalcode"
    t.integer  "customerid"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "administrations", :force => true do |t|
    t.integer  "administrationid"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "categoryid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "customerid"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.integer  "provinceid"
    t.integer  "addressid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "orderid"
    t.integer  "quantity"
    t.decimal  "gst"
    t.decimal  "pst"
    t.decimal  "hst"
    t.integer  "customerid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "productid"
    t.string   "name"
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "rentalid"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "categoryid"
  end

  create_table "provinces", :force => true do |t|
    t.integer  "provinceid"
    t.string   "name"
    t.decimal  "gst"
    t.decimal  "pst"
    t.decimal  "hst"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rentals", :force => true do |t|
    t.integer  "rentalid"
    t.string   "name"
    t.decimal  "price"
    t.string   "animaltype"
    t.string   "workertype"
    t.boolean  "availability"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "description"
  end

end
