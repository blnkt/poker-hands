def poker_hands(cards)
  cards_tonum = []
  cards_tosuit = []
  pair_counter=0
  hand_name = "high card"
  0.upto(4) do |i|
     cards_tonum.push(cards[i].chop.to_i)
     cards_tosuit.push(cards[i].slice(-1))
  end
  cards_tonum = cards_tonum.sort
  0.upto(3) do |i|
    if (cards_tosuit[i] == cards_tosuit[i+1]) && (cards_tosuit[i] == cards_tosuit[i+2]) && (cards_tosuit[i] == cards_tosuit[i+3]) && (cards_tosuit[i] == cards_tosuit[i+4])
      if ((cards_tonum[i].next == cards_tonum[i+1]) && (cards_tonum[i+1].next == cards_tonum[i+2]) && (cards_tonum[i+2].next == cards_tonum[i+3]) && (cards_tonum[i+3].next == cards_tonum[i+4]))
        if (cards_tonum[0] == 10)
          hand_name = "royal flush"
        else
          hand_name = "straight flush"
        end
      else
      hand_name = "flush"
      end
      return hand_name
    elsif ((cards_tonum[i].next == cards_tonum[i+1]) && (cards_tonum[i+1].next == cards_tonum[i+2]) && (cards_tonum[i+2].next == cards_tonum[i+3]) && (cards_tonum[i+3].next == cards_tonum[i+4]))
      hand_name = "straight"
      return hand_name
    elsif (cards_tonum[i] == cards_tonum[i+1]) && (cards_tonum[i] == cards_tonum[i+2]) && (cards_tonum[i] == cards_tonum[i+3])
      hand_name = "four of a kind"
      return hand_name
    elsif (cards_tonum[i] == cards_tonum[i+1]) && (cards_tonum[i] == cards_tonum[i+2])
      if ((((cards_tonum[i] == cards_tonum[i+1]) && (cards_tonum[i] == cards_tonum[i+2])) && (cards_tonum[i+3] == cards_tonum[i+4])) ||
      (((cards_tonum[i+2] == cards_tonum[i+3]) && (cards_tonum[i+3] == cards_tonum[i+4])) && (cards_tonum[i] == cards_tonum[i+1])))
      hand_name = "full house"
      else
      hand_name = "three of a kind"
      end
      return hand_name
    elsif cards_tonum[i] == cards_tonum[i+1]
      pair_counter = pair_counter + 1
      hand_name = "#{pair_counter} pair"
    end
  end
  return hand_name
end

poker_hands(["12C", "13C", "4D", "12S", "13H"])
