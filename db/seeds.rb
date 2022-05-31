# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Costume.destroy_all
User.destroy_all

puts "creating users..."

User.create(username: "Anna", email: "anna@gmail.com", password: "password")
User.create(username: "Ben", email: "ben@gmail.com", password: "password")
User.create(username: "Chris", email: "chris@gmail.com", password: "password")
User.create(username: "Maria", email: "maria@gmail.com", password: "password")
User.create(username: "Filipe", email: "filipe@gmail.com", password: "password")
User.create(username: "Diandra", email: "diandra@gmail.com", password: "password")
User.create(username: "Marie", email: "marie@gmail.com", password: "password")
User.create(username: "Tom", email: "tom@gmail.com", password: "password")
User.create(username: "Hector", email: "hector@gmail.com", password: "password")
User.create(username: "Leanna", email: "leanna@gmail.com", password: "password")

puts "created #{User.count} users"
puts "creating costumes..."

Costume.create(name: "Car", price: "30", description: "Vroum vroum", size: "L", category: "Folk", photo_url: "https://i.ebayimg.com/images/g/Lc8AAOSwLxZiQ07O/s-l300.jpg", user_id:1)
Costume.create(name: "Lama", price: "30", description: "It's a lama", size: "L", category: "Animals", photo_url: "https://images.fun.co.uk/products/41458/2-1-106511/llama-adult-costume.jpg", user_id:1)
Costume.create(name: "Vampire", price: "30", description: "Edward Cullen's cousin", size: "L", category: "Folk", photo_url: "https://cdn.shopify.com/s/files/1/0023/6178/6426/products/fever-male-vampire-costume.jpg?v=1603019908", user_id:1)
Costume.create(name: "Santa", price: "30", description: "It's another bird", size: "L", category: "Chritmas", photo_url: "https://www.fancydresstown.co.uk/wp-content/uploads/2019/04/2d86078e-1285-4789-b496-b5d77e41ef46_1.f03bd87635645ca7b09aa5571e6379db.jpeg", user_id:1)
Costume.create(name: "Avatar", price: "30", description: "It's another bird", size: "L", category: "Fantasy", photo_url: "https://cdn.shopify.com/s/files/1/0276/9308/8803/products/Deluxe_Jake_Sully_Costume_1200x1200.jpg?v=1575226311", user_id:1)
Costume.create(name: "Unicorn", price: "30", description: "It's another bird", size: "L", category: "Animals", photo_url: "https://canary.contestimg.wish.com/api/webimage/5f3e4c9815a731fab60aceed-large.jpg?cache_buster=68ea9fd65b3a013941ba6e8720453774", user_id:1)
Costume.create(name: "Gatsby", price: "30", description: "It's another bird", size: "L", category: "Fancy", photo_url: "https://cdn.shopify.com/s/files/1/0023/6178/6426/products/flapper-costume-black-with-long-dress_900x.jpg?v=1603010553", user_id:1)
Costume.create(name: "Fairy", price: "30", description: "It's another bird", size: "L", category: "Folk", photo_url: "https://images.halloweencostumes.co.uk/products/63738/1-1/mens-forest-fairy-costume.jpg", user_id:1)
Costume.create(name: "Mother Nature", price: "30", description: "It's another bird", size: "L", category: "Fantasy", photo_url: "https://www.seekpng.com/png/detail/415-4159040_mother-nature-mother-nature-costume.png", user_id:1)
Costume.create(name: "Tomato", price: "30", description: "It's another bird", size: "L", category: "Party", photo_url: "https://images.halloweencostumes.co.uk/products/67323/1-1/adult-inflatable-tomato-costume.jpg", user_id:1)

puts "created #{Costume.count} costumes"
