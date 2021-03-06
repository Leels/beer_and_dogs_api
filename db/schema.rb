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

ActiveRecord::Schema.define(version: 2020_02_06_192348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "neighborhood"
    t.string "website"
    t.string "establishment_type"
    t.string "food"
    t.string "restrictions"
    t.float "lat"
    t.float "long"
    t.string "img"
    t.string "img2"
    t.string "img3"
    t.string "img4"
    t.string "kid_friendly"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "author"
    t.string "content_body"
    t.integer "rating"
    t.integer "establishment_id"
  end

  add_foreign_key "reviews", "establishments"
end
