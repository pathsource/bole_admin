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

ActiveRecord::Schema.define(version: 20140915030027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "device_tokens", force: true do |t|
    t.string   "token"
    t.hstore   "settings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favourites", force: true do |t|
    t.integer  "user_id"
    t.integer  "likeable_id"
    t.string   "likeable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "in_app_purchase_plans", force: true do |t|
    t.string   "product_id"
    t.integer  "term_of_service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "in_app_purchases", force: true do |t|
    t.integer  "in_app_purchase_plan_id"
    t.integer  "transaction_id",          limit: 8
    t.string   "product_id"
    t.integer  "user_id"
    t.hstore   "receipt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_style_assessments", force: true do |t|
    t.string   "version"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_style_options", force: true do |t|
    t.integer  "life_style_question_id"
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.string   "key_word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_style_questions", force: true do |t|
    t.integer  "life_style_assessment_id"
    t.string   "title"
    t.string   "question_type"
    t.text     "body"
    t.string   "image"
    t.string   "key_word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_style_records", force: true do |t|
    t.integer  "user_id"
    t.hstore   "results"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "version"
    t.string   "location"
    t.string   "time"
    t.integer  "options",    default: [], array: true
    t.hstore   "money",      default: {}
    t.string   "name"
  end

  create_table "open_auths", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.hstore   "info"
    t.hstore   "credentials"
    t.hstore   "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "open_auths", ["user_id"], name: "index_open_auths_on_user_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "age"
    t.string   "degree"
    t.string   "industry"
    t.string   "occupation"
    t.string   "skills"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "majors",     default: [], array: true
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "quiz_questions", force: true do |t|
    t.text    "body"
    t.integer "quiz_id"
    t.string  "question_type"
    t.hstore  "options"
  end

  create_table "quizzes", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "subscribe_factors", force: true do |t|
    t.integer "subscribe_id"
    t.hstore  "factors"
  end

  create_table "subscribe_histories", force: true do |t|
    t.integer  "subscribe_id"
    t.integer  "items",               array: true
    t.integer  "result_count"
    t.datetime "sent_at"
    t.datetime "mailed_at"
    t.datetime "read_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subscribe_factor_id"
  end

  create_table "subscribes", force: true do |t|
    t.integer  "user_id"
    t.integer  "category"
    t.integer  "interval"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "next_send_at"
    t.boolean  "receive_message"
    t.boolean  "receive_mail"
  end

  create_table "user_device_tokens", force: true do |t|
    t.integer "user_id"
    t.integer "device_token_id"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "type"
    t.datetime "expiration_date"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "video_comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_play_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.integer  "play_length"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "play_times",  default: 0
  end

end
