Customer.destroy_all
Order.destroy_all
Pie.destroy_all

puts "🌱 Seeding..."

bob = Customer.create(name: "Bob Ross", phone: 111-111-1111)
angela = Customer.create(name: "Angela Basset", phone: 222-222-2222)
mike = Customer.create(name: "Mike Holmes", phone: 333-333-3333)
tim = Customer.create(name: "Tim Baltz", phone: 444-444-4444)
pedro = Customer.create(name: "Pedro Pascal", phone: 555-555-5555)

order_1 = Order.create(date_ordered: 11/7/2022, pick_up_date: 12/24/2023, customer_id: bob.id)
order_2 = Order.create(date_ordered: 11/11/2023, pick_up_date: 12/23/2023, customer_id: angela.id)
order_3 = Order.create(date_ordered: 2/3/2023, pick_up_date: 2/14/2023, customer_id: mike.id)
order_4 = Order.create(date_ordered: 5/20/2023, pick_up_date: 7/4/2023, customer_id: tim.id)
order_5 = Order.create(date_ordered: 10/9/2022, pick_up_date: 11/23/2023, customer_id: pedro.id)

Pie.create(flavor: "Lemon Meringue", price: 30.00, order_id: order_1.id)
Pie.create(flavor: "Apple Crumb", price: 20.00, order_id: order_2.id)
Pie.create(flavor: "Blueberry Pastry", price: 25.00, order_id: order_3.id)
Pie.create(flavor: "Chocolate Cream", price: 30.00, order_id: order_4.id)
Pie.create(flavor: "Cherry Ganache", price: 25.00, order_id: order_5.id)

puts "✅ Done seeding!"
