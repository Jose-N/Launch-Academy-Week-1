class Board
  def initialize
    @board = make_board
  end

  def board
    @board
  end

  def make_board
    row = []
    column = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' ]
    9.times { row << column} 
    return row
  end

  def display_board
    index = [' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
    @board.each do |r|
      r.each_with_index do |c, index|
        if index == 0
          print '|' + c + ' '
        elsif index == 8
          print c + '|'
        else 
          print c + ' '
        end
      end
      puts
    end
    index.each { |letter| print letter + ' '}
  end
end
