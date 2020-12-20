class AddStatusToVlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :vlogs, :status, :integer, default: 0, null: false

  end
end


