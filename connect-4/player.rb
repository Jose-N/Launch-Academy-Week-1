require_relative 'board'
class Player 
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @pieces = []
  end

  def turn_index_into_number(user_choice)
    case user_choice.downcase
    when 'a'
      user_choice = 0
    when 'b'
      user_choice = 1
    when 'c'
      user_choice = 2
    when 'd'
      user_choice = 3
    when 'e'
      user_choice = 4
    when 'f'
      user_choice = 5
    when 'g'
      user_choice = 6
    when 'h'
      user_choice = 7
    when 'i'
      user_choice = 8
    end
    return user_choice
  end

  def place_piece(board, letter)
    number = turn_index_into_number(letter)

  end
end

jose = Player.new('Jose', 'x')
board = Board.new

8.times do
jose.place_piece(board, 'h')
board.display_board
end
