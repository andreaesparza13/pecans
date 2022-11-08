class Item < ApplicationRecord
   has_many :cart_item_joins 
   has_many :carts, through: :cart_item_joins
end
