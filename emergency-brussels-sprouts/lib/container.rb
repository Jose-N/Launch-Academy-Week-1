class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(filler)
    times_can_add = @maximum_holding_weight / filler.weight

    times_can_add.to_i.times do
      @ingredients.push(filler) 
      @weight += filler.weight
    end

    @weight = @weight.round
  end

  def which_ingredient
    return @ingredients[0].name
  end

  def how_many_ingredients
    return @ingredients.size
  end

  def remove_one_ingredient
    @ingredients.pop
    return @ingredients
  end

  def empty
    @ingredients = []
    return @ingredients
  end
end
