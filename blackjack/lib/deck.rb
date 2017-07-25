class Deck
  SUIT = ["Heart", "Spade", "Club", "Diamond"]
  FACE = ["Queen", "King", "Jack"]
  attr_reader :deck

  def initialize
    @deck = []
    SUIT.each do |suit|
      FACE.each do |face|
        @deck << Card.new(suit, face, 10)
      end
      i = 1
      9.times do
        @deck << Card.new(suit, i.to_s, i)
        i += 1
      end
      @deck << Card.new(suit, "Ace", nil)
    end
  end

  def shuffle!
    @deck.shuffle!
  end

  def deal
    @deck.pop
  end
end
