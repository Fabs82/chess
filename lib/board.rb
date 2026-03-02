# A class that manages and renders the ChessBoard
class ChessBoard
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) { '_' } }
  end

  def board_setup
    # temporarely use letters instead of the pieces
    # first row
    @board[0][0] = 'R'
    @board[0][1] = 'N'
    @board[0][2] = 'B'
    @board[0][3] = 'Q'
    @board[0][4] = 'K'
    @board[0][5] = 'B'
    @board[0][6] = 'N'
    @board[0][7] = 'R'
    # entire line for Pawns
    @board[1] = Array.new(8, 'P')
    @board[6] = Array.new(8, 'p')
    # last row
    @board[7][0] = 'r'
    @board[7][1] = 'n'
    @board[7][2] = 'b'
    @board[7][3] = 'q'
    @board[7][4] = 'k'
    @board[7][5] = 'b'
    @board[7][6] = 'n'
    @board[7][7] = 'r'
  end

  def place(piece, position)
    # takes a piece and its position
    row, column = position
    @board[row][column] = piece
  end

  def out_of_bound?(position)
    # check if the position coordinates are valid
    row, column = position
    return unless !row.between?(0, 7) || !column.between?(0, 7)

    puts 'Out of bound'
  end

  def cell_free?(position)
    # check if the cell is free (not nil)
    row, column = position
    piece = @board[row][column]
    if @board[row][column] == '_'
      puts 'row is free'
    else
      puts "row is taken by #{piece}"
    end
  end

  def render
    @board.each_with_index do |line, index|
      print "#{8 - index}| "
      line.each do |cell|
        print "#{cell} "
      end
      print "\n"
    end
    print ' +----------------' + "\n"
    print '   1 2 3 4 5 6 7 8' + "\n"
  end
end

board = ChessBoard.new
board.board_setup
board.render
