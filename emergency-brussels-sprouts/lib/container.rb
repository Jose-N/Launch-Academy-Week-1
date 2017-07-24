class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(filler)
    @ingredients.push(filler)
  end

  def which_ingredient
    return @ingredients[0].name
  end

  def how_many_ingredients
    return @ingredients.size
  end
end
