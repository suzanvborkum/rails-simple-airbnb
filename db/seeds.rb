require 'faker'

9.times do
  Flat.create(
    name: Faker::Movies::HitchhikersGuideToTheGalaxy.location,
    address: Faker::Address.street_address,
    description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    price_per_night: rand(20..200),
    number_of_guests: rand(1..5),
    picture_url: 'https://source.unsplash.com/random'
  )
end
