class Zoo
  attr_reader :cages, :employees, :season_opening_date, :season_closing_date, :animals
  def initialize(name, season_opening_date, season_closing_date)
    @cages = []
    @employees = []
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee

  end

  def open?(date)
    if date >= @season_opening_date && date <= @season_closing_date
      return true
    else
      return false
    end
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    raise ZooAtCapacity
  end

  def visit
    greetings = ""
    @employees.each do |employee|
      greetings += employee.greet + "\n"
    end
    @cages.each do |cage|
      if !cage.empty?
        greetings += cage.animal.speak + "\n"
      end
    end
    greetings
  end
end

  class ZooAtCapacity < StandardError
    def initialize(msg="NO MAS ANIMALS IN CAGES")
    end
  end
