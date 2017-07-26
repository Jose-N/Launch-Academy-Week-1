require_relative "card"
require_relative "deck"
require_relative "hand"

class Play 
  def initialize(player)
    @deck = Deck.new
    @player = Hand.new(player)
    @dealer = Hand.new("Dealer")
    @deck.shuffle!
  end

  def play
    win = false
    @player.recieve_card(@deck)
    @dealer.recieve_card(@deck)
    @player.recieve_card(@deck)
    @dealer.recieve_card(@deck)

    puts "#{@player.name} has #{@player.points}"
    puts "Dealer has #{@dealer.points}"
    while !win
      stand = false
      while stand == false
        puts "Stand or Hit? (H/S)"
        answer = gets.chomp.downcase
        if answer == "h"
          @player.recieve_card(@deck)
          puts "#{@player.name} has #{@player.points}"
          if @player.points > 21
            win == true
            puts "House wins"
            break
            if @dealer.points < 17
              @dealer.recieve_card(@deck)
              puts "Dealer has #{@dealer.points}"
              if @dealer.points > 21
                win == true
                puts "You win"
                break
              end
            end
          end
        elsif answer == "s"
          stand = true
        end
      end
      while @dealer.points < 17
        @dealer.recieve_card(@deck)
        puts "Dealer has #{@dealer.points}"
        if @dealer.points > 21
          win == true
          puts "You win"
          break
        end
      end
      if @dealer.points > @player.points
        win == true
        puts "Dealer wins"
        break
      elsif @dealer.points < @player.points
        win == true
        puts "#{@player.name} wins"
        break
      elsif @dealer.points == @player.points
        win == true
        puts "It's a tie"
        break
      end
    end
  end
end

game = Play.new("Jose")
game.play
