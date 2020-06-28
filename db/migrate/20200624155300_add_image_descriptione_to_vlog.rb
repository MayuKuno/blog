class AddImageDescriptioneToVlog < ActiveRecord::Migration[5.2]
  def change
    add_column :vlogs, :image, :string
    add_column :vlogs, :description, :string
  end
end
