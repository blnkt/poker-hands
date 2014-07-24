require('rspec')
require('poker-hands')

describe :poker_hands do
  it('should take a sorted array of cards and check to see if a pair are present') do
    expect(poker_hands(["2C", "5C", "4D", "12S", "4H"])).to eq("1 pair")
  end

  it('should take a sorted array of cards and check to see if two pair are present') do
    expect(poker_hands(["12C", "13C", "4D", "12S", "13H"])).to eq("2 pair")
  end

  it('should take a sorted array of cards and check to see if three of a kind are present') do
    expect(poker_hands(["12C", "12H", "4D", "12S", "13H"])).to eq("three of a kind")
  end

  it('should take a sorted array of cards and check to see if four of a kind are present') do
    expect(poker_hands(["12C", "12H", "12D", "12S", "10H"])).to eq("four of a kind")
  end

  it('should take a sorted array of cards and check to see if a straight is present') do
    expect(poker_hands(["11C", "12H", "9D", "10S", "8H"])).to eq("straight")
  end

  it('should take a sorted array of cards and check to see if a full house is present') do
    expect(poker_hands(["11C", "12H", "11D", "11S", "12H"])).to eq("full house")
  end

  it('should take a sorted array of cards and check to see if a flush is present') do
    expect(poker_hands(["11C", "12C", "11C", "11C", "12C"])).to eq("flush")
  end
end


