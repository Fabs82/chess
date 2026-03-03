#class Knight
class Knight
  attr_reader :color
  def initialize(color)
    @color = color
    @moves = [[+2, +1], [+2, -1], [-2, +1], [-2, -1], [+1, +2], [-1, +2], [+1, -2], [-1, -2]]
  end

  def to_s
    @color == :white ? '♘' : '♞'
  end
end