# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = product.new([{name: Faker::Name.name , price:Faker::Number.decimal, image_url: Faker::Internet.url, description: Faker::JapaneseMedia::Naruto.village}])

product.save