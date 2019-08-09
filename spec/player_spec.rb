# frozen_string_literal: true

require 'player'

describe Player do
  subject(:farnaz) { Player.new('Farnaz') }

  it 'returns the name' do
    expect(farnaz.name).to eq('Farnaz')
  end
end
