require 'faker'

Restaurant.destroy_all

30.times do |i|
  Restaurant.create(
    name: Faker::Restaurant.name, 
    address: Faker::Address.full_address,
    rating:  rand(0..5)
  )
end