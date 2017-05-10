# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = "ktrubisz123"

500.times do |i|
  user = User.create(
      email: Faker::Internet.email,
      password: password,
      password_confirmation: password
  ).save!
end

500.times do |i|
  user = User.create(
    title: Faker::Book.title,
    director: Faker::Book.author,
    year: Faker::Number.between(1970, 2017),
    description: FFaker::Lorem.paragraphs,
    photo: Faker::File.file_name('path/to')
  ).save!
end