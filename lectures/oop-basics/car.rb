class Car # UpperCamelCase
  DEFAULT_BRAND = 'Tesla'

  attr_reader :brand
  # attr_writer :color
  attr_accessor :color # combines both attr_reader and attr_writer

  def initialize(color, brand = DEFAULT_BRAND) # constructor
    # STATE (DATA)
    # @variable are instance variables
    @color = color # string
    @engine_started = false # boolean
    @brand = brand # string

    # Encapsulation => all the @variables
    # are not accessible from the outside
  end

  # BEHAVIOUR
  # instance methods
  def start!
    pump_fuel
    crank_engine
    ignite_spark

    @engine_started = true
  end

  # these methods are created with the attr_reader:
  # def color
  #   @color
  # end

  # def brand
  #   @brand
  # end

  # custom reader
  def engine_started?
    @engine_started
  end

  # this method is created using the attr_writer
  # def color=(new_color)
  #   @color = new_color
  # end

  # def paint(new_color)
  #   @color = new_color
  # end

  private

  def pump_fuel
    puts "Pumping fuel..."
  end

  def crank_engine
    puts "Cranking engine..."
  end

  def ignite_spark
    puts "Igniting spark..."
  end
end

boras_car = Car.new('green')
nanas_car = Car.new('white', 'Nissan')
puts "This #{nanas_car.brand} has a beautiful #{nanas_car.color} color."

puts "The car is currently #{nanas_car.engine_started? ? 'started' : 'off'}."

puts 'Starting the car...'
nanas_car.start!

puts "The car is currently #{nanas_car.engine_started? ? 'started' : 'off'}."

puts 'Repainting the car red...'
# nanas_car.paint('red')
nanas_car.color = 'red'

puts "The car is now #{nanas_car.color}."