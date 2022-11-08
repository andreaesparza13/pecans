puts "seeding..."

user1 = User.create!(first_name: "Hillary", last_name: "Swank", username: "hswank", password: "12345", is_admin: false)
user2 = User.create!(first_name: "Andrea", last_name: "Esparza", username: "aesparza", password: "12345", is_admin: true)

item1 = Item.create!(item: "pecans", count: 3, price: 1.50, weight: 0.25)
item2 = Item.create!(item: "walnuts", count: 3, price: 2.00, weight: 1)
item3 = Item.create!(item: "almonds", count: 3, price: 1.0, weight: 1.5)

cart1 = Cart.create!(user: user1, total_cost: 0, total_items: 0)

carted_item1 = CartItemJoin.create!(item: item1, cart: cart1)

puts "...done"