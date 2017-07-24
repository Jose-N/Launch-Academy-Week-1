class Ingredient
  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight_in_grams)
    weight_in_kilos = weight_in_grams / 1000

    Ingredient.new(name, weight_in_kilos)
  end
end
