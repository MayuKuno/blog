class CreateVlogCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :vlog_categories do |t|
      t.references :vlog, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
