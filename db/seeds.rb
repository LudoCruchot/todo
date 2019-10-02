# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tasks = Task.create([
  {title: "Buy Groceries", description: "Go to Safeway, don't forget the coupons.", state: 1},

  {title: "Wash the Car", description: "Have a date this Saturday.", state: 0},

  {title: "Clean my room", description: "It's that time of year again.", state: 0},

  {title: "Do the Laundry", description: "Don't forget the bleach!", state: 1},

  {title: "Work on Mini-Project", description: "What are Happy Tails anyway?", state: 1},

  {title: "Walk the Dog", description: "Take Fido around the block.", state: 0}

   ])
