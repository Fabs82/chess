#Rook class
class Rook
  attr_reader :color

  def initialize(color)
    @color = color
    @moves = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  end

  def to_s
    @color == :white ? '♖' : '♜'
  end
end