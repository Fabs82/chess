require_relative 'lib/board'

chessboard = ChessBoard.new
rook = Rook.new(chessboard, :white)
chessboard.place(rook, [3, 3])
rook.moves([3, 3])
