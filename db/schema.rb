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

ActiveRecord::Schema.define(version: 2018_04_10_142603) do

  create_table "apiotics_settings", force: :cascade do |t|
    t.string "key"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_device_buzzers", force: :cascade do |t|
    t.boolean "buzzer"
    t.boolean "buzzer_ack"
    t.boolean "buzzer_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "medical_device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_device_four_digit_displays", force: :cascade do |t|
    t.boolean "clock"
    t.boolean "clock_ack"
    t.boolean "clock_complete"
    t.string "display"
    t.boolean "display_ack"
    t.boolean "display_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "medical_device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_device_galvanic_skin_response_sensors", force: :cascade do |t|
    t.integer "data"
    t.boolean "data_ack"
    t.boolean "data_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "medical_device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_device_heart_rate_sensors", force: :cascade do |t|
    t.integer "data"
    t.boolean "data_ack"
    t.boolean "data_complete"
    t.string "port_number"
    t.boolean "port_number_ack"
    t.boolean "port_number_complete"
    t.integer "medical_device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_device_medical_devices", force: :cascade do |t|
    t.string "apiotics_instance"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
