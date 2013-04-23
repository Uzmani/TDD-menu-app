class CreatePost < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string   :slug
      t.string   :title
      t.text     :content
      t.boolean  :is_published, :default => false
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
