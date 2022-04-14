require_relative 'chef'

class Restaurant
  attr_reader :name, :location, :chef
  attr_accessor :capacity

  def self.categories # self is the Restaurant class
    %w[sushi burgers mexican french italian]
  end

  def initialize(name, location, category, capacity, chef_name) # constructor
    # STATE
    @name = name # string
    @location = location # string
    @category = category # string
    @capacity = capacity # integer
    @chef = Chef.new(chef_name, self) # self is the instance of Restaurant that we are creating
    @reservations = [] # array
  end

  # BEHAVIOUR
  def make_reservations(customer_name)
    @reservations << customer_name
  end

  def open?
    Time.now.hour >= 11 && Time.now.hour <= 14
  end

  def closed?
    !open?
  end
end
