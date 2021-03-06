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

ActiveRecord::Schema.define(version: 20161107235539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "username",                                                                                                   null: false
    t.string   "email",                                                                                                      null: false
    t.string   "password_digest",                                                                                            null: false
    t.string   "session_token",                                                                                              null: false
    t.string   "image_url",       default: "http://www.sessionlogs.com/media/icons/defaultIcon.png",                         null: false
    t.string   "banner_url",      default: "http://wallpapersdsc.net/wp-content/uploads/2016/09/Coffee-Beans-Wallpaper.jpg", null: false
    t.datetime "created_at",                                                                                                 null: false
    t.datetime "updated_at",                                                                                                 null: false
    t.string   "blurb"
    t.index ["email"], name: "index_artists_on_email", unique: true, using: :btree
    t.index ["username"], name: "index_artists_on_username", unique: true, using: :btree
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "artist_id",  null: false
    t.string   "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.index ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  end

end
