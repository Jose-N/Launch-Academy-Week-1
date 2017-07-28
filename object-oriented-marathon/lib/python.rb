class Python
  attr_reader :name

  include Reptile

  def initialize(name)
    @name = name
  end

  def speak
    "SSSSssssss..."
  end


end
