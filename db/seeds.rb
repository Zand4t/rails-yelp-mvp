# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Restaurant.destroy_all
  Review.destroy_all

  restaurant = [
    {
      name: 'Loekie',
      address: 'Van Leeuwen',
      phone_number: '03744902937',
      category: 'chinese'
    } #REMEBER ,
  ]


  restaurant.each { |resto_info| Restaurant.create!(resto_info) }
