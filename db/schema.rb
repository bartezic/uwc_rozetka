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

ActiveRecord::Schema.define(:version => 20130331210947) do

  create_table "accessories", :force => true do |t|
    t.integer  "product_id"
    t.integer  "accessory_product_id"
    t.integer  "discount_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "accessories", ["accessory_product_id"], :name => "index_accessories_on_accessory_product_id"
  add_index "accessories", ["discount_id"], :name => "index_accessories_on_discount_id"
  add_index "accessories", ["product_id"], :name => "index_accessories_on_product_id"

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discounts", :force => true do |t|
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.boolean  "in_filter"
    t.boolean  "primary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "product_id"
  end

  add_index "photos", ["product_id"], :name => "index_photos_on_product_id"

  create_table "prices", :force => true do |t|
    t.integer  "price_cents",    :default => 0,     :null => false
    t.string   "price_currency", :default => "USD", :null => false
    t.integer  "product_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "prices", ["product_id"], :name => "index_prices_on_product_id"

  create_table "product_features", :force => true do |t|
    t.integer  "product_id"
    t.integer  "feature_id"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "product_features", ["feature_id"], :name => "index_product_features_on_feature_id"
  add_index "product_features", ["product_id"], :name => "index_product_features_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
    t.integer  "brand_id"
  end

  add_index "products", ["brand_id"], :name => "index_products_on_brand_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "review_comments", :force => true do |t|
    t.string   "username"
    t.text     "comment"
    t.integer  "review_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "review_comments", ["review_id"], :name => "index_review_comments_on_review_id"

  create_table "review_usefullnesses", :force => true do |t|
    t.boolean  "usefull"
    t.integer  "review_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "review_usefullnesses", ["review_id"], :name => "index_review_usefullnesses_on_review_id"

  create_table "reviews", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "product_id"
    t.integer  "marg"
    t.string   "pros"
    t.string   "cons"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "comment"
  end

  add_index "reviews", ["product_id"], :name => "index_reviews_on_product_id"

  create_table "settings", :force => true do |t|
    t.string   "var",                      :null => false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "settings", ["thing_type", "thing_id", "var"], :name => "index_settings_on_thing_type_and_thing_id_and_var", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
