class RemoveLanguageFromWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :language, :string
  end
end
