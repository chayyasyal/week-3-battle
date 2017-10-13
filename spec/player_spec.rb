require 'player'

describe Player do
  subject(:chris) { described_class.new('Chris') }
  describe '#name' do
    it 'should return player name' do
      expect(chris.name).to eq 'Chris'
    end
  end
end
