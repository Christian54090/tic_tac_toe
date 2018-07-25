class Game
  def start()
  end

  def exit_game()
    exit(0)
  end
end

class TicTacToe < Game

  def start()
    functionality
  end

  def functionality

    coords = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    vals = {1 => 'X', -1 => 'O'}
    bhash = {}

    @turn = 0
    while @turn < 9 do
      puts %Q{
          |   |
        #{coords.at(0)} | #{coords.at(1)} | #{coords.at(2)}
      -------------
        #{coords.at(3)} | #{coords.at(4)} | #{coords.at(5)}
      -------------
        #{coords.at(6)} | #{coords.at(7)} | #{coords.at(8)}
          |   |
      }
      if @turn % 2 == 0
        puts "O, type your coordinate!"
        print("> "); pick = $stdin.gets.chomp
        if !(bhash.has_key?(pick)) && (0..9).include?(pick.to_i)
          bhash[pick] = -1
          puts bhash
          coords.map!{|e| coords.index(e) === (pick.to_i - 1) ? vals[-1] : e}
        else
          puts "That coordinate already has a value!"
          puts bhash.key(pick)
          functionality
        end
      else
        puts "X, type your coordinate!"
        print("> "); pick = $stdin.gets.chomp
        if !(bhash.has_key?(pick)) && (0..9).include?(pick.to_i)
          bhash[pick] = 1
          puts bhash
          coords.map!{|e| coords.index(e) === (pick.to_i - 1) ? vals[1] : e}
        else
          puts "That coordinate already has a value!"
          puts bhash.key(pick)
          functionality
        end
      end

      @turn += 1
    end

    if ([bhash['1'], bhash['2'], bhash['3']].inject(:+) == 3 || [bhash['4'], bhash['5'], bhash['6']].inject(:+) == 3 ||
        [bhash['7'], bhash['8'], bhash['9']].inject(:+) == 3 || [bhash['1'], bhash['4'], bhash['7']].inject(:+) == 3 ||
        [bhash['2'], bhash['5'], bhash['8']].inject(:+) == 3 || [bhash['3'], bhash['6'], bhash['9']].inject(:+) == 3 ||
        [bhash['1'], bhash['5'], bhash['9']].inject(:+) == 3 || [bhash['3'], bhash['5'], bhash['7']].inject(:+) == 3)
      exit_game("X wins!")
    elsif ([bhash['1'], bhash['2'], bhash['3']].inject(:+) == -3 || [bhash['4'], bhash['5'], bhash['6']].inject(:+) == -3 ||
           [bhash['7'], bhash['8'], bhash['9']].inject(:+) == -3 || [bhash['1'], bhash['4'], bhash['7']].inject(:+) == -3 ||
           [bhash['2'], bhash['5'], bhash['8']].inject(:+) == -3 || [bhash['3'], bhash['6'], bhash['9']].inject(:+) == -3 ||
           [bhash['1'], bhash['5'], bhash['9']].inject(:+) == -3 || [bhash['3'], bhash['5'], bhash['7']].inject(:+) == -3)
      exit_game("O wins!")
    else
      exit_game("Cat's game!")
    end
  end

  def exit_game(exit_text)
    puts exit_text
    exit(0)
  end
end

game = TicTacToe.new
game.start()
