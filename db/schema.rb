# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_26_151705) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "sloop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sloop_id"], name: "index_bookmarks_on_sloop_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "skipper_id", null: false
    t.bigint "ride_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ride_id"], name: "index_chatrooms_on_ride_id"
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.string "favoritable_type", null: false
    t.bigint "favoritable_id", null: false
    t.string "favoritor_type", null: false
    t.bigint "favoritor_id", null: false
    t.string "scope", default: "favorite", null: false
    t.boolean "blocked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocked"], name: "index_favorites_on_blocked"
    t.index ["favoritable_id", "favoritable_type"], name: "fk_favoritables"
    t.index ["favoritable_type", "favoritable_id", "favoritor_type", "favoritor_id", "scope"], name: "uniq_favorites__and_favoritables", unique: true
    t.index ["favoritable_type", "favoritable_id"], name: "index_favorites_on_favoritable"
    t.index ["favoritor_id", "favoritor_type"], name: "fk_favorites"
    t.index ["favoritor_type", "favoritor_id"], name: "index_favorites_on_favoritor"
    t.index ["scope"], name: "index_favorites_on_scope"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "receiver_id", null: false
    t.bigint "poster_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poster_id"], name: "index_reviews_on_poster_id"
    t.index ["receiver_id"], name: "index_reviews_on_receiver_id"
  end

  create_table "ride_requests", force: :cascade do |t|
    t.date "start_date"
    t.string "start_port"
    t.date "end_date"
    t.string "end_port"
    t.float "distance"
    t.text "details"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "start_port_latitude"
    t.float "start_port_longitude"
    t.float "end_port_latitude"
    t.float "end_port_longitude"
    t.index ["user_id"], name: "index_ride_requests_on_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.date "start_date"
    t.string "start_port"
    t.date "end_date"
    t.string "end_port"
    t.float "distance"
    t.text "details"
    t.bigint "sloop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capacity"
    t.float "start_port_latitude"
    t.float "start_port_longitude"
    t.float "end_port_latitude"
    t.float "end_port_longitude"
    t.index ["sloop_id"], name: "index_rides_on_sloop_id"
  end

  create_table "sloops", force: :cascade do |t|
    t.integer "capacity"
    t.string "category"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["user_id"], name: "index_sloops_on_user_id"
  end

  create_table "traveller_rides", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "ride_id", null: false
    t.string "validate_status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "info"
    t.index ["ride_id"], name: "index_traveller_rides_on_ride_id"
    t.index ["user_id"], name: "index_traveller_rides_on_user_id"
  end

  create_table "user_messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_user_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_user_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.integer "age"
    t.string "phone_number"
    t.text "preferences"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookmarks", "sloops"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "chatrooms", "rides"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "reviews", "users", column: "poster_id"
  add_foreign_key "reviews", "users", column: "receiver_id"
  add_foreign_key "ride_requests", "users"
  add_foreign_key "rides", "sloops"
  add_foreign_key "sloops", "users"
  add_foreign_key "traveller_rides", "rides"
  add_foreign_key "traveller_rides", "users"
  add_foreign_key "user_messages", "chatrooms"
  add_foreign_key "user_messages", "users"
end
