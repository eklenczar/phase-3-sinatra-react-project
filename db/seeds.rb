Customer.destroy_all
Order.destroy_all
Pie.destroy_all

puts "🌱 Seeding..."

50.times do
    Customer.create(
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.cell_phone
    )
end

customers = Customer.all.map{|c| c.id}

50.times do
    Order.create(
        date_ordered: Faker::Date.between("2023-01-01", "2023-6-30"), 
        pick_up_date: Faker::Date.between("2023-07-01", "2023-12-31"), 
        customer_id: customers.sample
    )
end

orders = Order.all.map{|o| o.id}

Pie.create(flavor: "Apple", price: 20.00, order_id: orders.sample)
Pie.create(flavor: "Cherry", price: 20.00, order_id: orders.sample)
Pie.create(flavor: "Blueberry", price: 20.00, order_id: orders.sample)
Pie.create(flavor: "Chocolate Cream", price: 30.00, order_id: orders.sample)
Pie.create(flavor: "Coconut Cream", price: 30.00, order_id: orders.sample)
Pie.create(flavor: "Banana Cream", price: 30.00, order_id: orders.sample)
Pie.create(flavor: "Cherry Ganache", price: 25.00, order_id: orders.sample)
Pie.create(flavor: "Key Lime", price: 25.00, order_id: orders.sample)
Pie.create(flavor: "Pumpkin", price: 25.00, order_id: orders.sample)
Pie.create(flavor: "Pecan", price: 25.00, order_id: orders.sample)

puts "✅ Done seeding!"
