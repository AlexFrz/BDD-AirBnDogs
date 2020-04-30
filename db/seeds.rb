# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

20.times do
  city = City.create!(city_name: Faker::Nation.capital_city)
end

dog = Dog.create!(name: "Blacky")
dog = Dog.create!(name: "Arturito de la Casa de Papel")

dogsitter = Dogsitter.create!(nickname: "Lessieur")

