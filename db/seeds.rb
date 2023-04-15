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

Dessert.create(
    flavor: "Apple", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Front-Street-Apple_7339-600x600.jpg",
    description: "Apples make this a good choice any time of year. Our homemade flaky pastry tops it off!"
    )
Dessert.create(
    flavor: "Apple Crumb", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Peninsula-Apple-Crumb_7332-600x600.jpg",
    description: "Filled with apples that have been tossed with cinnamon and sugar, and finished with our toasty crumb topping."
    )
Dessert.create(
    flavor: "Cherry", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Old-Mission-Cherry_7392-600x600.jpg",
    description: "Tasty cherries fill this pie with a tangy deliciousness, all baked into our flaky crust."
    )
Dessert.create(
    flavor: "Cherry Crumb", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Grand-Traverse-Cherry-Crumb_7404-600x600.jpg",
    description: "Our top selling pie made with tart cherries, sweetened up with love and a toasty crumb topping."
    )
Dessert.create(
    flavor: "Blueberry", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Suttons-Bay-Blueberry-Pastry_7503-600x600.jpg",
    description: "Sweet, plump blueberries are featured in our flaky pastry crust."
    )
Dessert.create(
    flavor: "Blueberry Crumb", 
    price: 20.00, 
    customer_id: nil,
    image: "https://gtpie.com/wp-content/uploads/2015/06/West-Bay-Blueberry-Crumb_7369-600x600.jpg",
    description: "This pie is bursting with summer-sweet, plump blueberries. The blues never tasted so good until they are finished with our toasty crumb topping."
    )
Dessert.create(
    flavor: "Chocolate Cream", 
    price: 30.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Chocolate-Cream_7543-600x600.jpg",
    description: "Made with fresh milk, butter and eggs like in the good old days. Rich chocolate cream sits atop our flaky crust and then is finished with whipped topping and chocolate shavings."
    )
Dessert.create(
    flavor: "Coconut Cream", 
    price: 30.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Coconut-Cream_7561-600x600.jpg",
    description: "Our delicious vanilla cream is full of coconut flakes, loaded into our flaky crust and finished with whipped topping and toasted coconut."
    )
Dessert.create(
    flavor: "Banana Cream", 
    price: 30.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Banana-Cream_7568-600x600.jpg",
    description: "This pie is built from the bottom up. We start with our flaky crust, add a layer of sliced bananas, a layer of our creamy vanilla filling and finish it off with a yummy whipped topping. "
    )
Dessert.create(
    flavor: "Peach", 
    price: 25.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Farmers-Market-Peach_7435-600x600.jpg",
    description: "Sweet peaches, brown sugar and vanilla baked to perfection with cinnamon and sugar sprinkled on top of our flaky crust sprinkled."
    )
Dessert.create(
    flavor: "Peach Crumb", 
    price: 25.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Glen-Haven-Peach-Crumb_7440-600x600.jpg",
    description: "A golden filling of luscious, tree-ripened peaches, brown sugar and vanilla. Baked to perfection finished with our toasty crumb topping."
    )
Dessert.create(
    flavor: "Key Lime", 
    price: 25.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Key-Lime_7579-600x600.jpg",
    description: "Made with real key lime juice, each pie’s cream tart filling is topped with fluffy, whipped topping rosettes and sits within a delicious graham cracker crust."
    )
Dessert.create(
    flavor: "Pumpkin", 
    price: 25.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/06/Northport-Pumpkin_7527-600x600.jpg",
    description: "This American classic features a pumpkin filling that reminds us of a cozy, quaint town."
    )
Dessert.create(
    flavor: "Pecan", 
    price: 25.00, 
    customer_id: customers.sample,
    image: "https://gtpie.com/wp-content/uploads/2015/07/Autumn-Harvest-Pecan_7519-800x800.jpg",
    description: "Our pecan pie is loaded with rich, gooey filling and mixed with an abundance of pecans, all baked in our flaky crust."
    )

puts "✅ Done seeding!"

# date_ordered: Faker::Date.between("2023-01-01", "2023-6-30"), 
#         pick_up_date: Faker::Date.between("2023-07-01", "2023-12-31"), 
