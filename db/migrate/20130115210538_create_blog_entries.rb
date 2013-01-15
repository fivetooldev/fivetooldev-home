class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :author
      t.datetime :published_at
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
