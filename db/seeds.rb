# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Costume.destroy_all

Costume.create!(name: "Bird", price: "30", description: "It's another bird", size: "L", category: "Animals", photo_url: "https://m.media-amazon.com/images/I/61OABgGLfuL._AC_UX385_.jpg")
