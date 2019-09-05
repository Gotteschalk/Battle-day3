require 'player'

describe Player do
  it 'returns its name' do
    bruce = Player.new("Bruce")
    expect(bruce.name).to eq("Bruce")
  end
end
