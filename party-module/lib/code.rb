
class PersonalizedHavocError < StandardError
end

module PartyGoer
  def initialize
    @i = 0
  end

  def drink
    if @i < 3
      @i += 1
      return true
    else
      return false
    end
  end

  def sing
    return 'LOLOLOLOLOLOLOL'
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end

module Invited
  def invited?
    true
  end
end

