class RenameInventoryTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :inventories, :items
  end
end
