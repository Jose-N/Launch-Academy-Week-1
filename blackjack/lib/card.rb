class Card
  attr_reader :suit, :name, :value, :color

  def initialize(suit, name, value, color)
    @suit = suit
    @name = name
    @value = value
    @color = color
  end
end
