# Pawn class
class Pawn < Piece
  def initialize(board, color)
    super
    @directions = [[0, 1], [0, 2]]
  end

  def icons
    # store the icons for the pieces in a hash
    { white: '♙', black: '♟' }
  end
end
