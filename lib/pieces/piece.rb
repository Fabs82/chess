# Main Class for Piece with commond methods and attributes
class Piece
  def initialize(position, color)
    @color = color
    @position = position
  end

  def possible_moves
    # overwritten for each subclass
    # returns an array [x, y] with the landing coordinates
  end
end