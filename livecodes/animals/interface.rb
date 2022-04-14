require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumbaa = Warthog.new('Pumbaa')

animals = [simba, nala, timon, pumbaa]

animals.each do |animal|
  puts animal.talk
end


# polymorphic_array = [123, 12, 5, 'hello', 'world', [2, 3], true]
# polymorphic_array.each do |element|
#   puts element.to_s
# end