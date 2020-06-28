class CreateVlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :vlogs do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.timestamps
    end
    add_index :vlogs, :title,                 unique: true
    add_index :vlogs, :content,                unique: true
  end
end

