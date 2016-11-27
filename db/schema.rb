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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161127110530) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "bids", force: :cascade do |t|
    t.integer  "job_offer_id"
    t.integer  "customer_id"
    t.integer  "dealer_id"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "booking_confirmations", force: :cascade do |t|
    t.integer  "job_offer_id"
    t.string   "customer_name"
    t.string   "customer_address"
    t.integer  "customer_phone_number"
    t.string   "dealer_name"
    t.integer  "dealer_phone_number"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "dealer_"
    t.string   "address"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "surname"
    t.string   "address"
    t.integer  "phone"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true

  create_table "dealers", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "dealer_"
    t.string   "address"
  end

  add_index "dealers", ["email"], name: "index_dealers_on_email", unique: true
  add_index "dealers", ["reset_password_token"], name: "index_dealers_on_reset_password_token", unique: true

  create_table "job_offers", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "customer_name"
    t.string   "customer_address"
    t.integer  "customer_phone_number"
    t.date     "date"
    t.string   "car_make"
    t.string   "car_model"
    t.date     "year"
    t.text     "issue"
    t.integer  "bid_id"
    t.integer  "dealer_id"
    t.integer  "payment_id"
    t.integer  "booking_confirmation_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "job_offers", ["bid_id"], name: "index_job_offers_on_bid_id"
  add_index "job_offers", ["booking_confirmation_id"], name: "index_job_offers_on_booking_confirmation_id"
  add_index "job_offers", ["customer_id"], name: "index_job_offers_on_customer_id"
  add_index "job_offers", ["dealer_id"], name: "index_job_offers_on_dealer_id"
  add_index "job_offers", ["payment_id"], name: "index_job_offers_on_payment_id"

  create_table "payments", force: :cascade do |t|
    t.boolean  "mastercard"
    t.boolean  "visa"
    t.boolean  "visa_debit"
    t.integer  "job_offer_id"
    t.string   "customer_name"
    t.integer  "card_number"
    t.date     "expiry_date"
    t.integer  "three_digit_pin_number"
    t.decimal  "amount"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
