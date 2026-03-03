require_relative 'piece'

# class Bishop
class Bishop < Piece
  def initialize(color)
    super
    @moves = [[-1, -1], [-1, 1], [1, -1], [1, 1]]
  end

  def icons
    { white: '♗', black: '♝' }
  end
end
