class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :text, null: false
      t.index :text, unique: true
      t.timestamps
    end
  end
end
