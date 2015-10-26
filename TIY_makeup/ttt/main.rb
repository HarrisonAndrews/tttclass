require './player'
require './board'


# player1 = HumanPlayer.new
# player2 = OtherThing.new
# maybe_something_here = ???

class Tic_tac_toe
  def initialize

    @player1 = Player.new(name, letter)
    @player2 = Player.new(name, letter)
    @board = Board.new

  end

  def finito
    @board.show_board
    if @board.win?
      puts "The game is over. You won!"
    else
      puts "The game is a draw. Maybe we should stop playing tic tac toe."
    end
  end

  def tic_tac_toe

    # until game_over?(board)
    until win?.board || draw?.board
      move = update_board.board
      @board[move - 1] = @player
      @player = switch_player.player
      endgit
      finito

    end

    def take_turn
      move = @player1.get_move
      @board.update_board(move, @player1)
    end





  end
end



# game = Tic_tac_toe.new

# game.play






# def tic_tac_toe
#   board = (1..9).to_a
#   player = choose_player
#   until game_over?(board)
#     move = take_turn(board, player)
#     board[move - 1] = player
#     player = switch_player(player)
#   end
#   finito(player, board)
# end








### For actual human input we only need choose player X or O, and selections between 1 to 9.
## For the computer we only need selections 1 .. 9, and what positions are taken on the board.
## we need the board, and a way to keep track of the board.
## we need what constitutes a move, and how to count the moves.
##finally we need what is a win, and what is a draw.
## also we need tests for the game.





