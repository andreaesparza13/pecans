class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :item
      t.integer :count
      t.float :price
      t.float :weight

      t.timestamps
    end
  end
end
