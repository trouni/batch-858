require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'returns an instance of Animal' do
      bob = Animal.new('Bob')
      expect(bob).to be_an(Animal)
      # expect(bob.class).to eq(Animal)
    end
  end

  describe '#name' do
    it 'returns the name of the Animal' do
      bob = Animal.new('Bob')
      expect(bob.name).to eq('Bob')
    end
  end

  describe '#eat' do
    it 'returns a sentence like “Timon eats a scorpion”' do
      timon = Animal.new('Timon')
      expect(timon.eat('a scorpion')).to eq('Timon eats a scorpion')
    end
  end

  describe '::phyla' do
    it 'returns the four phylas of the animal kingdom' do
      phylas = [
        'the worms',
        'the squids',
        'the cucumbers',
        'the ones with the back-end'
      ]
      expect(Animal.phyla).to eq(phylas)
    end
  end
end
