require 'player'

describe Player do
  subject(:chris) { described_class.new('Chris') }
  describe '#name' do
    it 'should return player name' do
      expect(chris.name).to eq 'Chris'
    end
  end

  describe '#hit_points' do
    it 'should return hit points' do
      expect(chris.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end
