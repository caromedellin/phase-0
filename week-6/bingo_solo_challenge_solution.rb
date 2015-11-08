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

# Initial Solutionclass BingoBoard
=begin
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
    print_board
  end
  def print_board
    p @game
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
  
  def new_board
    new =[]
    5.times do 
    new << (((1..100).to_a).shuffle.sample(5))
    end
    @bingo_board = new
  end

  def call
    @game = ("BINGO").split(//)
    @letter = game.sample
    @number = rand(1..100) 
    p "Annunciator calls on the mic:#{letter}#{number}!"
  end
  def cross_number
    row = @game.index(letter)
    @bingo_board = @bingo_board.each { |x|
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


  def diagonal_win
    board = @bingo_board
     win = 0
    (0..board.length - 1).step(6).each do |index|
      unless board[index] != "X"
        win += 1
      end
      p "YOU WIN (diagonal)!!!" if win ==0
  
    end
    (4..board.length - 1).step(4).each do |index|
      unless board[index] != "X"
       win += 1
       end
      p win
      if win ==0
       p"#################"
        p "YOU WIN (diagonal reverse)!!!"
     end
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [["X", "X", "X", "X", "X"],
        ["X", "X", 75, "X", 73],
        ["X", 85, "X", 89, 57],
        ["X", "X", 96, "X", 51],
        ["X", 70, 54, 80, "X"]]




new_game = BingoBoard.new(board)
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.call
new_game.cross_number
new_game.print_board
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

def diagonal(board)
   win = 0
  (0..board.length - 1).step(6).each do |index|
    unless board[index] != "X"
      win += 1
    end
  p win
    if win ==0
      p"#################"
      p "YOU WIN (diagonal)!!!"
    end
  end
  (4..board.length - 1).step(4).each do |index|
    unless board[index] != "X"
      win += 1
    end
  p win
    if win ==0
      p"#################"
      p "YOU WIN (diagonal reverse)!!!"
    end
  end
end
diagonal(board)
p board
p" "
p "lalalalalalalalalalalalalalala!!!!!"
5.times do 
  new||=[]<< (((1..100).to_a).shuffle.sample(5))
end
board = new
p board
new_game.new_board
=end

#REFACTORED

board = [["X", "X", "X", "X", "X"],
        ["X", "X", 75, "X", 73],
        ["X", 85, "X", 89, 57],
        ["X", "X", 96, "X", 51],
        ["X", 70, 54, 80, "X"]]
class BingoBoard
  attr_reader :game, :letter, :number
  attr_accessor :bingo_board
 
  def initialize
    new =[]
    5.times { new << (((1..100).to_a).shuffle.sample(5))}
    @bingo_board = new
    @game = ("BINGO").split(//)
    print_board
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
    @letter = @game.sample
    @number = rand(1..100) 
    p "Annunciator calls on the mic:#{letter}#{number}!"
  end
  def cross_number
    row = @game.index(letter)
    @bingo_board = @bingo_board.each { |x|
      x[row] = "X" if x[row] == @number}
    return @bingo_board
  end
  def did_i_win_vertical?
    board = @bingo_board.flatten
    i=0
    for i in (0..4) do
      win = 0
    (i..board.length - 1).step(5).each { |index|
      win += 1 unless board[index] == "X"}
    p "YOU WIN (vertical)!!!" if win ==0
  end
  def did_i_win_horizontal?
    board = @bingo_board
    board.each {|item|
      win = 0
      item.each{|inner| win +=1 unless inner == "X" }
      p "YOU WIN (horizontal)!!!" if win == 0}
    end
  end


  def diagonal_win
    board = @bingo_board
     win = 0
    (0..board.length - 1).step(6).each { |index|
      win += 1 unless board[index] == "X"
      p "YOU WIN (diagonal)!!!" if win ==0}
    (4..board.length - 1).step(4).each { |index|
       win += 1 unless board[index] == "X"
      p "YOU WIN (diagonal reverse)!!!" if win ==0 }
  end

end

new_game = BingoBoard.new
500.times {new_game.call 
  new_game.cross_number}
new_game.print_board
new_game.diagonal_win
new_game.did_i_win_vertical?
new_game.did_i_win_horizontal?
    #board[index] == "X" ? (win += 0):(win+=1)
      
      #if board[index] == "X"
       # win += 0
      #else
       # win += 1
      #end


