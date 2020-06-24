class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :language, null: false
      t.string :URL, null: false, default: ""
      t.timestamps
    end
    add_index :works, :title,                 unique: true
    add_index :works, :description,                unique: true
    add_index :works, :language
    add_index :works, :URL,                unique: true
  end
end


