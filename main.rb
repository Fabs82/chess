require_relative 'lib/board'
chessboard = ChessBoard.new

chessboard.board_setup

chessboard.render
p chessboard.in_bound?([8, 8])
