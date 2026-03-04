# class Knight
class Knight < Piece
  def initialize(board, color)
    super
    @directions = [[+2, +1], [+2, -1], [-2, +1], [-2, -1], [+1, +2], [-1, +2], [+1, -2], [-1, -2]]
  end

  def icons
    # store the icons for the pieces in a hash
    { white: '♘', black: '♞' }
  end
end
