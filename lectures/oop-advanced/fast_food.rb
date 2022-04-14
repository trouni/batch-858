require_relative 'restaurant'

class FastFood < Restaurant
  def initialize(name, location, category, capacity, prep_time)
    @name = name # string
    @location = location # string
    @category = category # string
    @capacity = capacity # integer
    @prep_time = prep_time # integer
  end

  def make_reservations(customer_name)
    puts "Sorry, we don't take reservations here mate"
  end
end