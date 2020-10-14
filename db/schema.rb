# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_14_052805) do

  create_table "group_images", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "image_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_images_on_group_id"
    t.index ["image_id"], name: "index_group_images_on_image_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "image_tags", force: :cascade do |t|
    t.integer "image_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_image_tags_on_image_id"
    t.index ["tag_id"], name: "index_image_tags_on_tag_id"
  end

  create_table "images", force: :cascade do |t|
    t.binary "bin"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "group_images", "groups"
  add_foreign_key "group_images", "groups", on_delete: :cascade
  add_foreign_key "group_images", "images"
  add_foreign_key "group_images", "images", on_delete: :cascade
  add_foreign_key "image_tags", "images"
  add_foreign_key "image_tags", "images", on_delete: :cascade
  add_foreign_key "image_tags", "tags"
  add_foreign_key "image_tags", "tags", on_delete: :cascade
end
