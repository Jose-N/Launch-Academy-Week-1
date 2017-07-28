
class Board
attr_reader :board

  def initialize
    @board = make_board
  end

  def make_board
    board = []
    10.times do
      row = []
      10.times do
        row << ' '
      end
      board << row
    end
    return board
  end

  def display_board
    index = ['', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
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
