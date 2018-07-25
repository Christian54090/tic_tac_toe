class Game
  def start()
  end

  def end()
    exit(0)
  end
end

class TicTacToe < Game
  values = {'X' => -1, 'O' => 1}

  @coord_1, @coord_2, @coord_3 = 0, 0, 0
  @coord_4, @coord_5, @coord_6 = 0, 0, 0
  @coord_7, @coord_8, @coord_9 = 0, 0, 0

  row_1 = [@coord_1, @coord_2, @coord_3]
  row_2 = [@coord_4, @coord_5, @coord_6]
  row_3 = [@coord_7, @coord_8, @coord_9]

  col_1 = [@coord_1, @coord_4, @coord_7]
  col_2 = [@coord_2, @coord_5, @coord_8]
  col_3 = [@coord_3, @coord_6, @coord_9]

  dia_1 = [@coord_1, @coord_5, @coord_9]
  dia_2 = [@coord_3, @coord_5, @coord_7]

  def start()
    # set all values to 0
    # go to player 1
  end

  def board
    puts """
        |   |
      1 | 2 | 3
    -------------
      4 | 5 | 6
    -------------
      7 | 8 | 9
        |   |
    """
  end

  def functionality
  end

  def end()
    puts exit_text
    exit(0)
  end
end

game = TicTacToe.new
game.board
