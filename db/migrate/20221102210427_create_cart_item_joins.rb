class CreateCartItemJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_item_joins do |t|
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
