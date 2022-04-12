# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_12_091930) do
  create_table "hashtags", force: :cascade do |t|
    t.string "name"
    t.integer "references_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hashtags_posts", force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "hashtag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashtag_id"], name: "index_hashtags_posts_on_hashtag_id"
    t.index ["post_id"], name: "index_hashtags_posts_on_post_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "text"
    t.integer "retweet_count"
    t.string "retweet_id"
    t.integer "like_counter"
    t.integer "reply_at"
    t.string "out_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "user_name"
    t.string "description"
    t.string "avatar_url"
    t.boolean "certified"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hashtags_posts", "hashtags"
  add_foreign_key "hashtags_posts", "posts"
end
