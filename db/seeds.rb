# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Contact.destroy_all
contacts = []

20.times do |i|
  new_contact = {
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::Number.number(digits:10),
    email: Faker::Internet.email,
    company_name: Faker::Company.name,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: "#{Faker::Address.street_name} #{Faker::Address.zip} #{Faker::Address.city}",
    photo: nil 
  }
    contacts.push(new_contact)
end

Contact.create(contacts)