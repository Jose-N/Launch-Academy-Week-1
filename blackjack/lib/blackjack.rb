require_relative "card"
require_relative "deck"
require_relative "hand"

class Play 
  def initialize(player)
    @deck = Deck.new
    @player = Hand.new(player)
    @dealer = Hand.new("Dealer")
    @deck.shuffle!
  end

  def play
  end
end

game = Play.new("Jose")
game.play
