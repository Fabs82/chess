# Pawn class
class Pawn
  attr_reader :color

  def initialize(color)
    @color = color
    @moves = [[0, 1], [0, 2]]
  end

  def to_s
    @color == :white ? '♙' : '♟'
  end
end