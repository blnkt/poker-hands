def poker_hands(cards)
  cards_tonum = []
  pair_counter=0
  hand_name = ""
  0.upto(4) do |i|
     cards_tonum.push(cards[i].chop.to_i)
  end
  cards_tonum = cards_tonum.sort
  0.upto(4) do |i|
    puts cards_tonum
    # puts cards_tonum[i+1]
    if ((cards_tonum[i].next == cards_tonum[i+1]) && (cards_tonum[i+1].next == cards_tonum[i+2]) && (cards_tonum[i+2].next == cards_tonum[i+3]) && (cards_tonum[i+3].next == cards_tonum[i+4]))
      hand_name = "straight"
      return hand_name
    elsif (cards_tonum[i] == cards_tonum[i+1]) && (cards_tonum[i] == cards_tonum[i+2]) && (cards_tonum[i] == cards_tonum[i+3])
      hand_name = "four of a kind"
      return hand_name
    elsif (cards_tonum[i] == cards_tonum[i+1]) && (cards_tonum[i] == cards_tonum[i+2])
      hand_name = "three of a kind"
      return hand_name
    elsif cards_tonum[i] == cards_tonum[i+1]
      pair_counter = pair_counter + 1
    else
      hand_name = "#{pair_counter} pair"
    end
  end
  return hand_name
end

poker_hands(["12C", "12H", "4D", "12S", "13H"])