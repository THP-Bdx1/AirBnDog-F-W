# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    cities=City.create!(cityname: Faker::Nation.capital_city)
end

30.times do
    dogsitters=Dogsitter.create!(name: Faker::GameOfThrones.character,city_id: Random.rand(1..10))
end

50.times do
    dogs=Dog.create!(name: Faker::Dog.name, race: Faker::Dog.breed, gender: Faker::Dog.gender, city_id: Random.rand(1..10))
end

100.times do
    strolls=Stroll.create!(dogsitter_id: Random.rand(1..30), dog_id: Random.rand(1..50))
end
