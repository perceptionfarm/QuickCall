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

ActiveRecord::Schema.define(:version => 20111219213154) do

  create_table "appointments", :force => true do |t|
    t.integer  "owner"
    t.string   "date"
    t.string   "fromtime"
    t.string   "totime"
    t.text     "message"
    t.integer  "status"
    t.integer  "creator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_people", :force => true do |t|
    t.integer  "user"
    t.integer  "campaign"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "profile"
    t.string   "expiration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactactions", :force => true do |t|
    t.integer  "customerid"
    t.integer  "operator"
    t.text     "note"
    t.string   "timestamp"
    t.string   "lastupdate"
    t.string   "outcome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "second"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "mobile"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "addr1_street"
    t.string   "addr1_city"
    t.string   "addr1_zip"
    t.string   "addr1_province"
    t.string   "addr1_state"
    t.string   "addr1_country"
    t.string   "addr1_def"
    t.boolean  "addr1_pref"
    t.string   "addr2_street"
    t.string   "addr2_city"
    t.string   "addr2_zip"
    t.string   "addr2_province"
    t.string   "addr2_state"
    t.string   "addr2_country"
    t.string   "addr2_def"
    t.boolean  "addr2_pref"
    t.string   "birth_date"
    t.string   "birth_place"
    t.string   "cf"
    t.string   "occupation"
    t.integer  "education"
    t.string   "prefered_call_time"
    t.string   "prefered_visit_time"
    t.string   "freefield1"
    t.string   "freefield1_label"
    t.string   "freefield2"
    t.string   "freefield2_label"
    t.string   "freefield3"
    t.string   "freefield3_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customersbinds", :force => true do |t|
    t.integer  "customerid"
    t.integer  "companyid"
    t.integer  "campaignid"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.string   "label"
    t.text     "description"
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operators", :force => true do |t|
    t.string   "name"
    t.string   "second"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "level"
    t.integer  "company"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.integer  "opncampaigns"
    t.integer  "opncustomerspercampaign"
    t.integer  "opcustomfield"
    t.integer  "opbackup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promoters", :force => true do |t|
    t.string   "name"
    t.string   "second"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "status"
    t.string   "rating"
    t.boolean  "car"
    t.boolean  "motorbike"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotersbinds", :force => true do |t|
    t.integer  "promoterid"
    t.integer  "campaignid"
    t.integer  "status"
    t.string   "customrate"
    t.string   "customavailability"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "todos", :force => true do |t|
    t.integer  "owner"
    t.text     "message"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
