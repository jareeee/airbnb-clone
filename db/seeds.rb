require 'faker'

# Clear existing properties
Property.delete_all

# Create random properties
10.times do
  Property.create!(
    name: Faker::Lorem.words(number: 3).join(' '),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    headline: Faker::Lorem.sentence(word_count: 5),
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
  )
end