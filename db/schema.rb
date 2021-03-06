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

ActiveRecord::Schema.define(version: 20160731210112) do

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_exercises", id: false, force: :cascade do |t|
    t.integer "equipment_id", null: false
    t.integer "exercise_id",  null: false
  end

  create_table "equipment_users", id: false, force: :cascade do |t|
    t.integer "user_id",      null: false
    t.integer "equipment_id", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.integer  "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "video"
  end

  create_table "exercises_muscle_groups", id: false, force: :cascade do |t|
    t.integer "exercise_id",     null: false
    t.integer "muscle_group_id", null: false
  end

  create_table "exercises_routines", id: false, force: :cascade do |t|
    t.integer "routine_id",  null: false
    t.integer "exercise_id", null: false
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "muscle_size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "routines", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "weight"
    t.integer  "height"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.boolean  "admin"
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string   "workout"
    t.string   "mood"
    t.string   "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
