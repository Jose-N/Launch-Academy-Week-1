class Hand
  attr_reader :name, :hand, :points

  def initialize(name)
    @name = name
    @hand = []
    @points = 0
  end

  def recieve_card(deck)
    @hand << deck.deal 
    @points = 0
    @hand.each do |card|
      @points += card.value
    end
    puts "#{@name} was dealt a #{@hand[-1].name} of #{@hand[-1].suit}"
    return "#{@name} was dealt a #{@hand[-1].name} of #{@hand[-1].suit}"
  end
end
