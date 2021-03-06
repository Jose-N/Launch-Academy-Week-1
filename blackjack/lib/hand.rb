class Hand
  attr_reader :name, :hand, :points

  def initialize(name, hand = [])
    @name = name
    @hand = hand
    @points = 0
  end

  def recieve_card(deck)
    @hand << deck.deal 
    check_points

    puts "#{@name} was dealt a #{@hand[-1].name} of #{@hand[-1].suit}"
    puts "#{@name} has #{@points} points!"
    return "#{@name} was dealt a #{@hand[-1].name} of #{@hand[-1].suit}"
  end

  def check_ace?
    names_of_cards = []
    @hand.each do |card| 
      if card.name == "Ace" && card.value == 11
        return true
      else 
        return false
      end
    end
  end

  def over_21_with_ace
    @hand.each do |card|
      if card.name == "Ace" && card.value == 11
        card.value = 1
        break
      end
    end
    check_points
  end

  def check_points
    @points = 0
    @hand.each do |card|
      @points += card.value
    end
    while @points > 21 && check_ace?
      over_21_with_ace
    end
  end
end
