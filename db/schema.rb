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

ActiveRecord::Schema.define(version: 20150224221511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "mana_cost"
    t.integer  "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_class_abilities", force: :cascade do |t|
    t.integer  "character_class_id"
    t.integer  "ability_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "character_class_abilities", ["ability_id"], name: "index_character_class_abilities_on_ability_id", using: :btree
  add_index "character_class_abilities", ["character_class_id"], name: "index_character_class_abilities_on_character_class_id", using: :btree

  create_table "character_class_items", force: :cascade do |t|
    t.integer  "special_item_id"
    t.integer  "character_class_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "character_class_items", ["character_class_id"], name: "index_character_class_items_on_character_class_id", using: :btree
  add_index "character_class_items", ["special_item_id"], name: "index_character_class_items_on_special_item_id", using: :btree

  create_table "character_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "character_items", ["character_id"], name: "index_character_items_on_character_id", using: :btree
  add_index "character_items", ["item_id"], name: "index_character_items_on_item_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "constitution"
    t.integer  "health"
    t.integer  "damage"
    t.integer  "party_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "characters", ["party_id"], name: "index_characters_on_party_id", using: :btree

  create_table "item_locations", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "item_locations", ["item_id"], name: "index_item_locations_on_item_id", using: :btree
  add_index "item_locations", ["location_id"], name: "index_item_locations_on_location_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "encumberance"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lairs", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "monster_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lairs", ["location_id"], name: "index_lairs_on_location_id", using: :btree
  add_index "lairs", ["monster_id"], name: "index_lairs_on_monster_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "coordinates"
    t.string   "terrain"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loots", force: :cascade do |t|
    t.integer  "monster_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "loots", ["item_id"], name: "index_loots_on_item_id", using: :btree
  add_index "loots", ["monster_id"], name: "index_loots_on_monster_id", using: :btree

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.integer  "health"
    t.integer  "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mounts", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.boolean  "flying"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "character_class_abilities", "abilities"
  add_foreign_key "character_class_abilities", "character_classes"
  add_foreign_key "character_class_items", "character_classes"
  add_foreign_key "character_class_items", "special_items"
  add_foreign_key "character_items", "characters"
  add_foreign_key "character_items", "items"
  add_foreign_key "characters", "parties"
  add_foreign_key "item_locations", "items"
  add_foreign_key "item_locations", "locations"
  add_foreign_key "lairs", "locations"
  add_foreign_key "lairs", "monsters"
  add_foreign_key "loots", "items"
  add_foreign_key "loots", "monsters"
end
