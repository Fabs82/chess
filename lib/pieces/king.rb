#King class
class King
  attr_reader :color
  
  def initialize(color)
    @color = color
    @moves = [[-1, -1], [-1, 0], [-1, 1], [0, -1],[0, 1], [1, -1], [1, 0], [1, 1]]
  end

  def to_s
    @color == :white ? '♔' : '♚'
  end
end