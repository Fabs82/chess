require_relative 'piece'

# Rook class
class Rook < Piece
  def initialize(color)
    super
    @moves = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  end

  def icons
    { white: '♖', black: '♜' }
  end
end
