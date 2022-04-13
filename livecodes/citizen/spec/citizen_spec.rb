require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'returns an instance of Citizen' do
      kyle = Citizen.new('Kyle', 'Thomas', 19)
      # expect(kyle.class).to eq(Citizen)
      expect(kyle).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'returns true if the citizen is an adult' do
      kyle = Citizen.new('Kyle', 'Thomas', 19)
      # expect(actual).to eq(expected)
      # actual == expected
      expect(kyle.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is not an adult' do
      kyle = Citizen.new('Kyle', 'Thomas', 17)
      expect(kyle.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns the full name capitalized' do
      kyle = Citizen.new('kyle', 'thomas', 17)
      expect(kyle.full_name).to eq('Kyle Thomas')
    end
  end
end
