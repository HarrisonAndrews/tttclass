class Player
  def initialize(name, letter)
    puts "Name"
    @name = name
    puts "Letter x or o only"
    @letter = letter

  end

  def name
    @name = gets.chomp
  end

  def letter
    @letter = gets.chomp
  end

  # def choose_player
  #   puts "Please choose a piece 'X' or 'O'"
  #   choice = gets.chomp.upcase
  #   until %w(X O).include?(choice)
  #     puts "You have to choose 'X' or 'O'!"
  #     choice = gets.chomp.upcase
  #   end
  #   choice
  # end

  def switch_player
    @letter == :X ? 'O' : 'X'
  end


  def take_turn(board, player)
    show_board(board)
    puts "Player #{player}, please choose a numbered space on the board: "
    move = gets.chomp.to_i
    until available_moves(board).include?(move)
      puts "#{move} isn't an available space. Choose again: "
      move = gets.chomp.to_i
    end
    move
  end
end