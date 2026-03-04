require_relative 'lib/board'
chessboard = ChessBoard.new

chessboard.place(Rook.new(chessboard, :white), [0, 0])
chessboard.place(Rook.new(chessboard, :black), [0, 1])

chessboard.render
white_rook = chessboard.board[0][0]
black_rook = chessboard.board[0][1]

p white_rook.other_color?([0, 1])

p chessboard.in_bound?([8, 8])
