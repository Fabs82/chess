require_relative 'piece'

# class Knight
class Knight < Piece
  def initialize(color)
    super
    @moves = [[+2, +1], [+2, -1], [-2, +1], [-2, -1], [+1, +2], [-1, +2], [+1, -2], [-1, -2]]
  end

  def icons
    { white: '♘', black: '♞' }
  end
end
