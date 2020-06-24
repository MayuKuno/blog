class RenameUrlColumnToImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :works, :URL, :image
  end
end
