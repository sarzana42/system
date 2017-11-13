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

ActiveRecord::Schema.define(version: 20171113095423) do

  create_table "customers", force: :cascade do |t|
    t.string   "kubun"
    t.string   "groupcus"
    t.string   "maildm"
    t.string   "name1"
    t.string   "name2"
    t.string   "kana1"
    t.string   "kana2"
    t.string   "zip"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "fax"
    t.string   "email"
    t.string   "lineid"
    t.string   "skypeid"
    t.string   "danjo"
    t.string   "birth"
    t.string   "piccus"
    t.string   "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "kubuns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maildms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makers", force: :cascade do |t|
    t.string   "name"
    t.text     "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "productid"
    t.string   "name"
    t.string   "productpic"
    t.string   "productinfo"
    t.string   "maker"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "remark"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
