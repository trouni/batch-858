require_relative '../warthog'

describe Warthog do
  describe '#talk' do
    it 'returns the sound of the warthog makes' do
      warthog = Warthog.new('Pumbaa')
      expect(warthog.talk).to eq('Pumbaa grunts')
    end
  end
end