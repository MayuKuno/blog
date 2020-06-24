class RemoveOverviewFromWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :overview, :string
  end
end
