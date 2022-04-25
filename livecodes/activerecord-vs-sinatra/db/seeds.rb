require 'faker'

puts 'Destroying restaurants...'
Restaurant.destroy_all

puts 'Creating restaurants...'
20.times do
  Restaurant.create!(
    name: "#{Faker::Games::SuperSmashBros.fighter}'s #{Faker::Games::SuperSmashBros.stage}",
    city: Faker::Movies::StarWars.planet
  )
end