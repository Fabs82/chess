require_relative 'pieces/pieces'
# A class that manages and renders the ChessBoard
class ChessBoard
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) { '_' } }
  end

  def board_setup
    # setup the board for a new game
    # first row
    # @board[row][column]
    @board[7][0] = Rook.new(self, :white)
    @board[7][1] = Knight.new(self, :white)
    @board[7][2] = Bishop.new(self, :white)
    @board[7][3] = Queen.new(self, :white)
    @board[7][4] = King.new(self, :white)
    @board[7][5] = Bishop.new(self, :white)
    @board[7][6] = Knight.new(self, :white)
    @board[7][7] = Rook.new(self, :white)
    # entire line for Pawns
    @board[6] = Array.new(8) { Pawn.new(self, :white) }
    @board[1] = Array.new(8) { Pawn.new(self, :black) }
    # last row
    @board[0][0] = Rook.new(self, :black)
    @board[0][1] = Knight.new(self, :black)
    @board[0][2] = Bishop.new(self, :black)
    @board[0][3] = Queen.new(self, :black)
    @board[0][4] = King.new(self, :black)
    @board[0][5] = Bishop.new(self, :black)
    @board[0][6] = Knight.new(self, :black)
    @board[0][7] = Rook.new(self, :black)
  end

  def place(piece, position)
    # takes a piece and its position
    row, column = position
    @board[row][column] = piece
  end

  def in_bound?(position)
    # check if the position coordinates are valid
    row, column = position
    return true if row.between?(0, 7) && column.between?(0, 7)

    false
  end

  def cell_free?(position)
    # check if the cell is free (not  == _ )
    row, column = position
    cell = @board[row][column]
    return true if cell == '_'

    false
  end

  def render
    # simple render method to display the board in the terminal. Cells numbers temporarily reflect indexes
    @board.each_with_index do |line, index|
      print "#{0 + index}| "
      line.each do |cell|
        print "#{cell} "
      end
      print "\n"
    end
    print ' +----------------' + "\n"
    print '   0 1 2 3 4 5 6 7' + "\n"
  end
end
