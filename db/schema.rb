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

ActiveRecord::Schema.define(version: 2019_09_06_161109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "band_photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_photos_on_band_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "address"
    t.string "youtube_link"
    t.string "personal_website"
    t.string "soundcloud_link"
    t.boolean "is_live", default: true
    t.boolean "is_recording", default: true
    t.boolean "is_jamming", default: true
    t.boolean "is_composition", default: true
    t.boolean "is_cover", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "latitude"
    t.float "longitude"
    t.string "experience"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user1_id"], name: "index_conversations_on_user1_id"
    t.index ["user2_id"], name: "index_conversations_on_user2_id"
    t.index ["user_id"], name: "index_conversations_on_user_id"
  end

  create_table "favorite_artist_users", force: :cascade do |t|
    t.bigint "favorite_artist_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorite_artist_id"], name: "index_favorite_artist_users_on_favorite_artist_id"
    t.index ["user_id"], name: "index_favorite_artist_users_on_user_id"
  end

  create_table "favorite_artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_band_artists", force: :cascade do |t|
    t.bigint "band_id"
    t.bigint "favorite_artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_favorite_band_artists_on_band_id"
    t.index ["favorite_artist_id"], name: "index_favorite_band_artists_on_favorite_artist_id"
  end

  create_table "instrument_users", force: :cascade do |t|
    t.string "experience"
    t.boolean "is_available"
    t.bigint "user_id"
    t.bigint "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_instrument_users_on_instrument_id"
    t.index ["user_id"], name: "index_instrument_users_on_user_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "msg"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "unread", default: true
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "needed_instruments", force: :cascade do |t|
    t.bigint "band_id"
    t.bigint "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_needed_instruments_on_band_id"
    t.index ["instrument_id"], name: "index_needed_instruments_on_instrument_id"
  end

  create_table "read_marks", id: :serial, force: :cascade do |t|
    t.string "readable_type", null: false
    t.integer "readable_id"
    t.string "reader_type", null: false
    t.integer "reader_id"
    t.datetime "timestamp"
    t.index ["readable_type", "readable_id"], name: "index_read_marks_on_readable_type_and_readable_id"
    t.index ["reader_id", "reader_type", "readable_type", "readable_id"], name: "read_marks_reader_readable_index", unique: true
    t.index ["reader_type", "reader_id"], name: "index_read_marks_on_reader_type_and_reader_id"
  end

  create_table "starred_bands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "band_id"
    t.index ["band_id"], name: "index_starred_bands_on_band_id"
    t.index ["user_id"], name: "index_starred_bands_on_user_id"
  end

  create_table "starred_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_bands", force: :cascade do |t|
    t.bigint "band_id"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_style_bands_on_band_id"
    t.index ["style_id"], name: "index_style_bands_on_style_id"
  end

  create_table "style_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["style_id"], name: "index_style_users_on_style_id"
    t.index ["user_id"], name: "index_style_users_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sessions", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "full_name"
    t.string "gender"
    t.integer "age"
    t.string "address"
    t.string "photo"
    t.string "soundcloud_link"
    t.string "youtube_link"
    t.string "personal_website"
    t.text "bio"
    t.boolean "is_live", default: true
    t.boolean "is_recording", default: true
    t.boolean "is_jamming", default: true
    t.boolean "is_composition", default: true
    t.boolean "is_covers", default: true
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "band_photos", "bands"
  add_foreign_key "bands", "users"
  add_foreign_key "conversations", "users"
  add_foreign_key "conversations", "users", column: "user1_id"
  add_foreign_key "conversations", "users", column: "user2_id"
  add_foreign_key "favorite_artist_users", "favorite_artists"
  add_foreign_key "favorite_artist_users", "users"
  add_foreign_key "favorite_band_artists", "bands"
  add_foreign_key "favorite_band_artists", "favorite_artists"
  add_foreign_key "instrument_users", "instruments"
  add_foreign_key "instrument_users", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "needed_instruments", "bands"
  add_foreign_key "needed_instruments", "instruments"
  add_foreign_key "starred_bands", "bands"
  add_foreign_key "starred_bands", "users"
  add_foreign_key "style_bands", "bands"
  add_foreign_key "style_bands", "styles"
  add_foreign_key "style_users", "styles"
  add_foreign_key "style_users", "users"
end
