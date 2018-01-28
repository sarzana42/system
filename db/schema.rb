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

ActiveRecord::Schema.define(version: 20180124145024) do

  create_table "collectionmethods", force: :cascade do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacthistories", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "name"
    t.string   "kubun"
    t.text     "contactus"
    t.text     "answer"
    t.string   "resolutionstate"
    t.text     "remark"
    t.string   "tile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["order_id"], name: "index_contacthistories_on_order_id"
  end

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

  create_table "custompatterns", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "custompatternimage"
    t.index ["order_id"], name: "index_custompatterns_on_order_id"
    t.index ["product_id"], name: "index_custompatterns_on_product_id"
  end

  create_table "deliverymethods", force: :cascade do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "markmethods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markorders", force: :cascade do |t|
    t.integer  "custompattern_id"
    t.integer  "markpoint_id"
    t.integer  "markmethod_id"
    t.string   "markcolor"
    t.integer  "outsourcing_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["custompattern_id"], name: "index_markorders_on_custompattern_id"
    t.index ["markmethod_id"], name: "index_markorders_on_markmethod_id"
    t.index ["markpoint_id"], name: "index_markorders_on_markpoint_id"
    t.index ["outsourcing_id"], name: "index_markorders_on_outsourcing_id"
  end

  create_table "markpoints", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderdetails", force: :cascade do |t|
    t.integer  "custompattern_id"
    t.integer  "productdetail_id"
    t.string   "orderamount"
    t.text     "remark"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["custompattern_id"], name: "index_orderdetails_on_custompattern_id"
    t.index ["productdetail_id"], name: "index_orderdetails_on_productdetail_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "firstorderdate"
    t.date     "startdate"
    t.date     "finishdate"
    t.integer  "deliverymethod_id"
    t.integer  "collectionmethod_id"
    t.date     "collectiondate"
    t.date     "deliverydate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "image"
    t.text     "remark"
    t.string   "ordername"
    t.string   "orderid"
    t.index ["collectionmethod_id"], name: "index_orders_on_collectionmethod_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["deliverymethod_id"], name: "index_orders_on_deliverymethod_id"
  end

  create_table "outsourcings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "furigana"
    t.string   "zip"
    t.integer  "prefecture_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "inchargename"
    t.string   "inchargephone"
    t.string   "inchargemail"
    t.string   "companyname"
    t.string   "tel"
    t.string   "fax"
    t.index ["prefecture_id"], name: "index_outsourcings_on_prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "name"
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
