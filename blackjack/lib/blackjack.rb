require_relative 'heh'
require_relative "card"
require_relative "deck"
require_relative "hand"

class Play 
  def initialize(player)
    @deck = Deck.new
    @player = Hand.new(player)
    @dealer = Hand.new("Dealer")
    @deck.shuffle!
    @game_over = false
  end

  def play
    stand = false
    player_round
    dealer_ai
    player_round
    dealer_ai

    while stand == false && @game_over == false
      puts "Would you like to Hit or Stand (H/S)"
      answer = gets.chomp.downcase
      if answer == 's'
        stand = true
      elsif answer == 'h'
        player_round
        bust
        dealer_ai
        bust
      elsif answer == 'flip table'
        flip_table
      end
    end

    while @dealer.points < 17 && @game_over == false
      dealer_ai
      bust
    end

    after_stand
  end

  def player_round
    @player.recieve_card(@deck)
  end

  def dealer_ai
    if @dealer.points < 17 && @game_over == false
      @dealer.recieve_card(@deck)
    else 
      return false
    end
  end

  def check_ace?
  end

  def bust
    if @game_over == false
      if @dealer.points > 21
        puts "You Win"
        @game_over = true
      elsif @player.points > 21
        puts "You Lose"
        @game_over = true
      end
    end
  end

  def after_stand
    if @game_over == false
      if @player.points > @dealer.points
        puts "You Win"
        @game_over = true
      elsif @player.points < @dealer.points
        puts "You Lose"
        @game_over = true
      elsif @player.points == @player.points
        puts "You Tied"
        @game_over = true
      end
    end
  end
end

game = Play.new("Jose")
game.play
