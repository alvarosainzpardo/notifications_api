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

ActiveRecord::Schema.define(version: 20190211100701) do

  create_table "notifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fiware_service"
    t.string "fiware_servicepath"
    t.string "entity_id"
    t.string "entity_type"
    t.datetime "time_instant"
    t.string "attribute_01"
    t.string "attribute_02"
    t.string "attribute_03"
    t.string "attribute_04"
    t.string "attribute_05"
    t.string "attribute_06"
    t.string "attribute_07"
    t.string "attribute_08"
    t.string "attribute_09"
    t.string "attribute_10"
    t.string "attribute_11"
    t.string "attribute_12"
    t.string "attribute_13"
    t.string "attribute_14"
    t.string "attribute_15"
    t.string "attribute_16"
    t.string "attribute_17"
    t.string "attribute_18"
    t.string "attribute_19"
    t.string "attribute_00"
    t.string "attribute_20"
    t.string "attribute_21"
    t.string "attribute_22"
    t.string "attribute_23"
    t.string "attribute_24"
    t.string "attribute_25"
    t.string "attribute_26"
    t.string "attribute_27"
    t.string "attribute_28"
    t.string "attribute_29"
    t.string "attribute_30"
    t.string "attribute_31"
    t.string "attribute_32"
    t.string "attribute_33"
    t.string "attribute_34"
    t.string "attribute_35"
    t.string "attribute_36"
    t.string "attribute_37"
    t.string "attribute_38"
    t.string "attribute_39"
  end

end
