# require_relative 'restaurant'
require_relative 'fast_food'
require_relative 'fine_dining_restaurant'

# kfc = Restaurant.new('KFC', 'Shibuya', 'fried chicken', 20)

# puts "#{kfc.name} is located in #{kfc.location}."

# kfc.capacity = 25

# puts "#{kfc.name} now has a capacity of #{kfc.capacity}."


# kfc.make_reservations('Edmund')
# kfc.make_reservations('Reina')
# kfc.make_reservations('Chris')

# puts "#{kfc.name} is now #{kfc.open? ? 'open' : 'closed'}."

mcdonalds = FastFood.new("McDonald's", 'Meguro', 'burgers', 50, 2)

saito = FineDiningRestaurant.new('Sushi Saito', 'Roppongi', 'sushi', 16, 3)


p mcdonalds.location, saito.name
