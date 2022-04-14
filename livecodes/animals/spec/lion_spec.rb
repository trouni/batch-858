require_relative '../lion'

describe Lion do
  describe '#talk' do
    it 'returns the sound of the lion makes' do
      lion = Lion.new('Simba')
      expect(lion.talk).to eq('Simba roars')
    end
  end

  describe '#eat' do
    it 'returns a sentence like “Simba eats a gazelle. Law of the Jungle!”' do
      simba = Lion.new('Simba')
      expect(simba.eat('a gazelle')).to eq('Simba eats a gazelle. Law of the Jungle!')
    end
  end
end