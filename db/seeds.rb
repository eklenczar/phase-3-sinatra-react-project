Customer.destroy_all
Dessert.destroy_all

puts "🌱 Seeding..."

10.times do
    Customer.create(
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.cell_phone
    )
end

customers = Customer.all.map{|c| c.id}

Dessert.create(flavor: "Apple", price: 20.00, customer_id: customers.sample)
Dessert.create(flavor: "Cherry", price: 20.00, customer_id: customers.sample)
Dessert.create(flavor: "Blueberry", price: 20.00, customer_id: customers.sample)
Dessert.create(flavor: "Chocolate Cream", price: 30.00, customer_id: customers.sample)
Dessert.create(flavor: "Coconut Cream", price: 30.00, customer_id: customers.sample)
Dessert.create(flavor: "Banana Cream", price: 30.00, customer_id: customers.sample)
Dessert.create(flavor: "Cherry Ganache", price: 25.00, customer_id: customers.sample)
Dessert.create(flavor: "Key Lime", price: 25.00, customer_id: customers.sample)
Dessert.create(flavor: "Pumpkin", price: 25.00, customer_id: customers.sample)
Dessert.create(flavor: "Pecan", price: 25.00, customer_id: customers.sample)

puts "✅ Done seeding!"

# date_ordered: Faker::Date.between("2023-01-01", "2023-6-30"), 
#         pick_up_date: Faker::Date.between("2023-07-01", "2023-12-31"), 
