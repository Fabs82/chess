# Rook class
class Rook < Piece
  def initialize(board, color)
    super
    @directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  end

  def icons
    # store the icons for the pieces in a hash
    { white: '♖', black: '♜' }
  end
end
