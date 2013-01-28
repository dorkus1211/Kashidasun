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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121009081117) do

  create_table "books", :force => true do |t|
    t.string   "title",                         :null => false
    t.string   "author",                        :null => false
    t.string   "isbn",                          :null => false
    t.boolean  "lending",    :default => false, :null => false
    t.string   "member_id"
    t.datetime "lend_date"
    t.string   "publisher"
    t.datetime "pub_date"
    t.integer  "page"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "member_id",                     :null => false
    t.string   "pw",                            :null => false
    t.string   "name",                          :null => false
    t.boolean  "lending",    :default => false, :null => false
    t.boolean  "admin",      :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
