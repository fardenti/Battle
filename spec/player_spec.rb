# frozen_string_literal: true

require 'player'
require 'game'

describe Player do
  subject(:farnaz) { Player.new('Farnaz') }
  subject(:sumeet) { Player.new('Sumeet') }

  it 'returns the name' do
    expect(farnaz.name).to eq('Farnaz')
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(farnaz.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      game = Game.new(farnaz, sumeet)
      expect(sumeet).to receive(:receive_damage)
      game.attack(sumeet)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { sumeet.receive_damage }.to change { sumeet.hit_points }.by(-10)
    end
  end
end
