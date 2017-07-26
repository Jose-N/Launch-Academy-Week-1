require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    points = 0 
    @cards.each do |card|
      if card.value.is_a? String
        if card.value === 'A'
          points += 1
        else
          points += 10
        end
      else
        points += card.value
      end
    end
    if points + 10 <= 21 && has_ace?
      points += 10
    end
    return points
  end

  def has_ace?
    values = []
    @cards.each do |card|
      values << card.value
    end
    return values.include?('A')
  end
end

#deck = Deck.new
#cards = deck.deal(2)
#hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
