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

ActiveRecord::Schema.define(version: 2020_06_18_024850) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.integer "end_user_id"
    t.integer "item_id"
    t.text "comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "end_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "end_user_name"
    t.integer "area"
    t.boolean "user_status", default: true, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_end_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_end_users_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.boolean "genre_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "end_user_id"
    t.integer "genre_id"
    t.integer "unit_id"
    t.string "item_name"
    t.string "maker"
    t.integer "retail_price"
    t.text "remark"
    t.boolean "item_status", default: true
    t.boolean "confirm_status", default: false, null: false
    t.integer "nutrients_calorie"
    t.decimal "nutrients_protein", precision: 10, scale: 1
    t.decimal "nutrients_lipid", precision: 10, scale: 1
    t.decimal "nutrients_carbohydrate", precision: 10, scale: 1
    t.decimal "nutrients_salt", precision: 10, scale: 2
    t.decimal "nutrients_sodium", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_potassium", precision: 10, scale: 1, default: "0.0"
    t.float "nutrients_calcium", default: 0.0
    t.decimal "nutrients_magnesium", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_rin", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_iron", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_zinc", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_copper", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_manganese", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_lodine", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_selenium", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_chromium", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_molybdenum", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_vitamin_a", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_β_carotene", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_vitamin_d", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_vitamin_e", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_vitamin_k", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_vitamin_b1", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_vitamin_b2", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_niacin", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_vitmain_b6", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_vitamin_b12", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_folic_acid", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_pantothenic_acid", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_biotin", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_vitamin_c", precision: 10, scale: 1, default: "0.0"
    t.decimal "nutrients_saturated_fatty_acid", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_polyunsaturated_fatty_acid", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_monounsaturated_fatty_acid", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_cholesterol", precision: 10, scale: 3, default: "0.0"
    t.decimal "nutrients_soluble_dietary_fiber", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_insoluble_dietary_fiber", precision: 10, scale: 2, default: "0.0"
    t.decimal "nutrients_dietary_fiber", precision: 10, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "units", force: :cascade do |t|
    t.string "unit_name"
    t.boolean "unit_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
