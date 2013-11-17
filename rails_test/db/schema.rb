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

ActiveRecord::Schema.define(version: 20131117091428) do

  create_table "guns", force: true do |t|
    t.string   "name"
    t.boolean  "auto"
    t.decimal  "shots_per_second"
    t.boolean  "scope"
    t.integer  "clip_size"
    t.string   "clip_type"
    t.decimal  "damage"
    t.string   "bullet_speed"
    t.string   "reload_speed"
    t.string   "bullet_diameter"
    t.integer  "number_of_barrels"
    t.boolean  "spread"
    t.boolean  "healing_bullets"
    t.string   "explosion_radius"
    t.text     "extras"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
