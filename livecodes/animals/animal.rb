class Animal
  attr_reader :name

  def self.phyla
    [
      'the worms',
      'the squids',
      'the cucumbers',
      'the ones with the back-end'
    ]
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end
