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

ActiveRecord::Schema.define(version: 20180405012317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foodtypes", force: :cascade do |t|
    t.text "title"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "shortname"
  end

  create_table "foodtypes_recipes", id: false, force: :cascade do |t|
    t.integer "foodtype_id"
    t.integer "recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.text "name"
    t.text "food_desc"
    t.text "image"
    t.text "prep_time"
    t.text "cook_time"
    t.text "no_of_serves"
    t.text "spice_level"
    t.text "recipe_type"
    t.integer "foodtype_id"
    t.text "ingredients"
    t.text "procedure"
    t.text "country"
    t.text "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "nofviews"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
