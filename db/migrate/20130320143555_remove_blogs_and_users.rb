class RemoveBlogsAndUsers < ActiveRecord::Migration
  def up
    drop_table :blog_entries
    drop_table :users
  end

  def down
    create_table "blog_entries", :force => true do |t|
      t.string   "author"
      t.datetime "published_at"
      t.string   "title"
      t.text     "content"
      t.datetime "created_at",   :null => false
      t.datetime "updated_at",   :null => false
    end

    create_table "users", :force => true do |t|
      t.string   "email"
      t.string   "encrypted_password", :limit => 128
      t.string   "salt",               :limit => 128
      t.string   "confirmation_token", :limit => 128
      t.string   "remember_token",     :limit => 128
      t.datetime "created_at",                        :null => false
      t.datetime "updated_at",                        :null => false
    end
  end
end