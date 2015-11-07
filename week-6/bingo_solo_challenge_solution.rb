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

end

# Refactored Solution
=begin
=end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.print_board
#Reflection

