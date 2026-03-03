require_relative 'piece'

# Pawn class
class Pawn < Piece
  def initialize(color)
    super
    @moves = [[0, 1], [0, 2]]
  end

  def icons
    { white: '♙', black: '♟' }
  end
end
