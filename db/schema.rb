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

ActiveRecord::Schema.define(:version => 20110926072851) do

  create_table "atposts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currencycode"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  add_index "districts", ["state_id"], :name => "index_districts_on_state_id"

  create_table "donation_cards", :force => true do |t|
    t.date     "first_donation_date"
    t.date     "reminder_on"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "donor_id"
    t.integer  "thru_id"
  end

  add_index "donation_cards", ["donor_id"], :name => "index_donation_cards_on_donor_id"
  add_index "donation_cards", ["thru_id"], :name => "index_donation_cards_on_thru_id"

  create_table "donationcardperiods", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "donation_id"
    t.integer  "donation_card_id"
    t.integer  "donationperiod_id"
  end

  add_index "donationcardperiods", ["donation_card_id"], :name => "index_donationcardperiods_on_donation_card_id"
  add_index "donationcardperiods", ["donation_id"], :name => "index_donationcardperiods_on_donation_id"
  add_index "donationcardperiods", ["donationperiod_id"], :name => "index_donationcardperiods_on_donationperiod_id"

  create_table "donationconditions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donationperiods", :force => true do |t|
    t.string   "name"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donations", :force => true do |t|
    t.string   "othernames"
    t.date     "donationdate"
    t.float    "amountINR"
    t.float    "amount"
    t.string   "payment_details"
    t.string   "receipt_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "collector_id"
    t.integer  "donationtype_id"
    t.integer  "currency_id"
    t.integer  "donationcondition_id"
    t.integer  "paymentmode_id"
  end

  add_index "donations", ["collector_id"], :name => "index_donations_on_collector_id"
  add_index "donations", ["currency_id"], :name => "index_donations_on_currency_id"
  add_index "donations", ["donationcondition_id"], :name => "index_donations_on_donationcondition_id"
  add_index "donations", ["donationtype_id"], :name => "index_donations_on_donationtype_id"
  add_index "donations", ["paymentmode_id"], :name => "index_donations_on_paymentmode_id"

  create_table "donationtypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paymentmodes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "surname"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "gender",            :limit => 6, :default => "Male"
    t.string   "email"
    t.date     "birth_date"
    t.string   "phone"
    t.string   "mobile"
    t.float    "annual_income"
    t.string   "address1_line1"
    t.string   "address1_line2"
    t.string   "address1_pin_code"
    t.string   "pan_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "salutation_id"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "district_id"
    t.integer  "taluka_id"
    t.integer  "atpost_id"
  end

  add_index "people", ["atpost_id"], :name => "index_people_on_atpost_id"
  add_index "people", ["country_id"], :name => "index_people_on_country_id"
  add_index "people", ["district_id"], :name => "index_people_on_district_id"
  add_index "people", ["salutation_id"], :name => "index_people_on_salutation_id"
  add_index "people", ["state_id"], :name => "index_people_on_state_id"
  add_index "people", ["taluka_id"], :name => "index_people_on_taluka_id"

  create_table "salutations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "states", ["country_id"], :name => "index_states_on_country_id"

  create_table "talukas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "district_id"
  end

  add_index "talukas", ["district_id"], :name => "index_talukas_on_district_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
    t.string   "role"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
