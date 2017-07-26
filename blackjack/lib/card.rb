class Card
  attr_reader :suit, :name, :value
  attr_writer :value

  def initialize(suit, name, value)
    @suit = suit
    @name = name
    @value = value
  end
end
