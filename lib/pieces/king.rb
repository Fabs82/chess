require_relative 'piece'

# King class
class King < Piece
  def initialize(color)
    super
    @moves = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
  end

  def icons
    { white: '♔', black: '♚' }
  end
end
