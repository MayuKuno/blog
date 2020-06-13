class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :content, null: false
      t.timestamps
    end
    add_index :posts, :title,                 unique: true
    add_index :posts, :content,                unique: true
  end
end
