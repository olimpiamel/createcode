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

ActiveRecord::Schema.define(version: 2019_12_07_092647) do

  create_table "createdtranslations", force: :cascade do |t|
    t.integer "creator_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "totranslate"
    t.string "translated"
    t.string "language1"
    t.string "language2"
    t.index ["creator_id_id"], name: "index_createdtranslations_on_creator_id_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "alias"
    t.index ["email"], name: "index_creators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_creators_on_reset_password_token", unique: true
  end

  create_table "croations", force: :cascade do |t|
    t.string "title"
    t.string "lang1"
    t.text "totrans"
    t.string "lang2"
    t.text "translated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "email"
    t.string "userid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
