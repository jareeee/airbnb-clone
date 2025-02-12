6.times do |i|
  property = Property.create!(
    name: Faker::Lorem.words(number: 3).join(' '),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    headline: Faker::Lorem.sentence(word_count: 5),
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    price: Money.from_amount(rand(30_000..100_000), 'IDR'),
  )

  property.images.attach(io: File.open("db/images/property_#{i + 1}.png"), filename: property.name)
  property.images.attach(io: File.open("db/images/property_#{i + 7}.png"), filename: property.name)
end