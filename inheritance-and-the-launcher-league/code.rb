class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
  def backstory
    'Ran a marathon one day one to reach the finish line and find out that he can\'t stop running'
  end

  def powers
    'He doesn\'t get tired no matter how long he runs for'
  end

  def weakness
    'Banana peels, he just can\'t find a way to avoid them'
  end

  def speed_in_mph
    super * 1000
  end
end

class Brawler < SuperHero
  def backstory
    "Got really mad one night during a bar fight and never calmed down"
  end

  def powers
    "Can punch you hard enough for your best friend to feel it"
  end

  def weakness
    "A sobriety test"
  end

  def health
    super * 20
  end
end

class Detective < SuperHero
  def backstory
    "Knock off Batman"
  end
  
  def powers
    "Can find random item really well"
  end

  def weakness
    @secret_identity
  end

  def speed_in_mph
    super / 6
  end
end

class Demigod < SuperHero
  def backstory
    'Was a child born of a random human and Cthulhu'
  end

  def powers
    'Trying to think of how he was concevied will literally cause you to go insane'
  end

  def weakness
    'Unfortunatly he stuck with his father in the city of R\'lyeh, than and he looks like a fishman'
  end

  def home
    'Cosmic Plane'
  end
end

class JackOfAllTrades < SuperHero
  def backstory
    'He figured he could do every superhero\'s job better than they could, so he set out to prove himself right'
  end

  def powers
    'He can do everything every other superhero can do, he\'s kinda OP tbh'
  end

  def weakness
    'He\'s so obsessed with getting other superhero\'s power that he never has time to fight crime'
  end

  def species
    'Alien'
  end

  def home
    'Venus'
  end

  def psychic?
    !super
  end
end

class WaterBased < SuperHero
  def backstory
    'no one cares really'
  end

  def powers
    'does he really have powers though, I mean a supersoaker is really a power'
  end

  def weakness
    'He sucks at everything'
  end

  def home
    super + "'s Oceans"
  end

  def fans_per_thousand
    super / 100
  end

  def psychic?
    !super
  end
end
