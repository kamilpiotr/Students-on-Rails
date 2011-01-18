class M2 < ActiveRecord::Migration
  def self.up
    create_table "comments", :force => true do |t|
    t.string   "autor"
    t.string   "email"
    t.text     "tekst"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_id"
  end

  create_table "places", :force => true do |t|
    t.string   "nazwa"
    t.string   "wojewodztwo"
    t.string   "miasto"
    t.string   "ulica"
    t.string   "autor"
    t.text     "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end
  end

  def self.down
  end
end
