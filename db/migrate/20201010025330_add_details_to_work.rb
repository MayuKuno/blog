class AddDetailsToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :readme, :string
    add_column :works, :website, :string
  end
end
