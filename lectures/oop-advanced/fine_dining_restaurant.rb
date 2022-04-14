require_relative 'restaurant'

class FineDiningRestaurant < Restaurant
  def initialize(name, location, category, capacity, stars)
    super(name, location, category, capacity)
    @stars = stars # integer
  end

  def open?
    super || Time.now.hour >= 19 && Time.now.hour <= 23
  end
end