# Main Piece class
class Piece
  attr_reader :color, :board

  def initialize(board, color)
    @board = board
    @color = color
  end

  def to_s
    # return the icon for the piece based on its color
    @color == :white ? icons[:white] : icons[:black]
  end

  def other_color?(position)
    row, column = position
    piece = @board.board[row][column]
    piece != '_' && piece.color != @color
  end
end
