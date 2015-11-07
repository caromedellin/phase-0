# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
class BingoBoard
  attr_reader :game, :letter, :number
  attr_accessor :bingo_board
  def initialize(board)
    @bingo_board = board
    #p "Welcome to Play BINGO"
    #sleep 0.8
    #p "this is the only bingo room that it's not an actual room"
    #sleep 0.5
    #p"-----------------------"
    #sleep 0.6
    #p "THIS IS YOUR BOARD"
    #sleep 1
    #print_board
  end
  def print_board
    p @game
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

  def call
    @game = ("BINGO").split(//)
    @letter = game.sample
    @number = rand(1..100) 
    p game
    p "Annunciator calls on the mic:#{letter}#{number}!"
  end
  def cross_number
    row = @game.index(letter)
    p row
    @bingo_board.each { |x|
      if x[row] == @number
        x[row] = "X"
      end}
  end
  def did_i_win_vertical?
    board = @bingo_board.flatten
    i=0
    for i in (0..4) do
      win = 0
    (i..board.length - 1).step(5).each do |index|
      if board[index] == "X"
        win += 0
      else
        win += 1
      end
    end
    if win ==0
      p "YOU WIN (vertical)!!!"
    end
  end
  def did_i_win_horizontal?
    board = @bingo_board
    board.each {|item|
      win = 0
      item.each{|inner| 
        unless inner == "X"
        win +=1
        end
      }
    if win == 0
      p "YOU WIN (horizontal)!!!"
    end
    }
    end
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [["X", "X", "X", "X", "X"],
        ["X", 69, 75, 65, 73],
        ["X", 85, 97, 89, 57],
        ["X", 31, 96, 68, 51],
        ["X", 70, 54, 80, 83]]




new_game = BingoBoard.new(board)
new_game.call
new_game.print_board
new_game.did_i_win_vertical?
new_game.did_i_win_horizontal?
p "-----------------"

(0..board.length - 1).step(2).each do |index|
  p board[index]
end

num = (1..100).to_a
new = []
5.times do 
  new << (num.shuffle.sample(5))
end
p new

def did_i_win_horizontal?(board)
  board.each {
    |item|
    win = 0
    item.each{|inner| 
      unless inner == "X"
        win +=1
      end
      }
    if win == 0
      p "YOU WIN"
    end
    }
end
did_i_win_horizontal?(board)