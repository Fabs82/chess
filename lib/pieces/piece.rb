# Main Piece class
class Piece
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    @color == :white ? icons[:white] : icons[:black]
  end
end
