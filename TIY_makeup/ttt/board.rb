class Board


  # WINS = [[0,1,2], [3,4,5], [6,7,8],
  #         [0,3,6], [1,4,7], [2,5,8],
  #         [0,4,8], [2,4,6]]


  def initialize
    @board = (1..9).to_a
    @wins = [[0,1,2], [3,4,5], [6,7,8],
             [0,3,6], [1,4,7], [2,5,8],
             [0,4,8], [2,4,6]]
  end
  # def board
  #   @board
  # end

  def show_board
    @board
    puts "
      -----------
     | #{@board[0]} | #{@board[1]} | #{@board[2]} |
     | #{@board[3]} | #{@board[4]} | #{@board[5]} |
     | #{@board[6]} | #{@board[7]} | #{@board[8]} |
      ----------- "

  end

  def update_board(move, player_letter)
    @board[move] = player_letter
  end

  def win?
    WINS.any? do |x, y, z|
      @board[x] == @board[y] && @board[y] == @board[z]
    end
  end

  def draw?
    # available_moves(board).empty?
    @board.all? { |x| x.is_a?(String) }
  end

  # def game_over?
  #   win?(board) || draw?(board)
  # end

  def available_moves
    @board.reject { |x| x.is_a?(String) }
  end


end


