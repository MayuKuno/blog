class AddInfoToworks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :concept, :string, null: false, default: ""
    add_column :works, :overview, :string, null: false, default: ""
    add_column :works, :period, :string , null: false, default: ""
  end
end
