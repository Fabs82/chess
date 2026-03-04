# class Queen
class Queen < Piece
  def initialize(color)
    super
    @directions = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
  end

  def icons
    # store the icons for the pieces in a hash
    { white: '♕', black: '♛' }
  end
end
