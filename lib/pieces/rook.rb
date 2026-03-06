# Rook class
class Rook < Piece
  def initialize(board, color)
    super
    @directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  end

  def icons
    # store the icons for the pieces in a hash
    { white: '♖', black: '♜' }
  end

  def moves(position)
    possible_moves = []

    # for each possible direction update row/column
    @directions.each do |x, y|
      row, column = position
      loop do
        row += x
        column += y
        break unless @board.in_bound?([row, column])
        break unless @board.cell_free?([row, column])

        possible_moves << [row, column]
      end
    end
    p possible_moves
  end
end
