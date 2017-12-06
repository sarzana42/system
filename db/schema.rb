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

ActiveRecord::Schema.define(version: 20171205081830) do

  create_table "customermaildms", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "maildm_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_customermaildms_on_customer_id"
    t.index ["maildm_id"], name: "index_customermaildms_on_maildm_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "groupcus"
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
    t.string   "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kubun_id"
    t.datetime "birth"
    t.integer  "danjo"
    t.string   "image"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["kubun_id"], name: "index_customers_on_kubun_id"
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

  create_table "productdetails", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "colorcode"
    t.string   "colorname"
    t.string   "sizecode"
    t.string   "sizename"
    t.string   "vprice"
    t.string   "wprice"
    t.string   "price"
    t.string   "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_productdetails_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "productid"
    t.string   "name"
    t.string   "productpic"
    t.string   "productinfo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "remark"
    t.integer  "maker_id"
    t.index ["maker_id"], name: "index_products_on_maker_id"
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
