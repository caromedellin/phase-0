#THE ACTUAL CODE info about development at the end
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
    @bingo_board.each{|item| p item}
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
#On top

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
# I explain all of this on my post of this week
=begin

I like thinking classes are like factories, don't take my word for it, most people like to say they are blue prints. But I like factories because I can easily translate that to Spanish. So my classes are like factories, but cleaner and without the human exploitation.
So I got asked at DBC to build a Bingo class, don't take my word for it, there might be more efficient ways to build a class for Bingo out there, but the is what I did:

First I defined a class!

This is the way you define a class:
class Bingo
end
But you still have to give it the methos initialize, because if not, you class is just sitting there empty
So you ask you class to initialize, that is kind of giving it some default values or things to do with the attributes. In this particular case y want my class to start with this board.
board = [["X", "X", "X", "X", "X"],
        ["X", "X", 75, "X", 73],
        ["X", 85, "X", 89, 57],
        ["X", "X", 96, "X", 51],
        ["X", 70, 54, 80, "X"]]
And the reason why I want this is because it will serve me to later evaluate if a player has won a game. Later on I'll focus on generating my own costum boards but for now, this should sufice. As you can see in this table there are 3 ways to win a bingo game. That is with vertically, horizontally and in a diagonal.
 So I defined my board, and that is the board I used as driver code to test if the methods actually did something. But afterward it became this:
  my first def board was actually 
class BingoBoard
  attr_reader :game, :number, :bingo_board

  def initialize(board)
    @bingo_board = board
    #print_board
  end
On that 3rd line I tried testing calling another method that was defined later in my class, just to see if it would run it, turns out it does because the compiler first reads the class and make something out it (what ever compilers make out of classes) and the it just says to himself ok, I've got it but it doesn't do anything with it… until you call new_object = Class.new(argument) The argument is not always needed and it could be anything a number, a string, an array or a hash.
In this case I called it like this new_game.Bingo.new(board)
So then my computer (it's a she) told me this
nil
["X", "X", "X", "X", "X"]
["X", "X", 75, "X", 73]
["X", 85, "X", 89, 57]
["X", "X", 96, "X", 51]
["X", 70, 54, 80, "X"]
So I got super excited!  And commented the p_board method that was the following
def print_board
    p @game
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
It game nil because @game was a variable that was defined later in the class, if it was a method she would have called it and run it but since it was a variable not yet assigned she just said nil you nil nil nil. 
So I proceded to define that name that I inteded to be "BINGO" but in an array because I wanted it to match the spaces. So as you can see if I had made print_board instead of @game return call or print call it would have then directed the computer to run what ever I had stored on call but since I didn't 
  def call
    @game = ("BINGO").split(//)
    @letter = game.sample
    @number = rand(1..100) 
    p game
    p "Annunciator calls on the mic:#{letter}#{number}!"
  end

So I haven't said anything yet about the attributes, I had to write them, but as it turns out you don't want to just go write 
Attr_accessor on everyvariable, because that would make you variables super vulnerable, even in their own method houses inside their factory (they are like the workers or maybe  the material) some object from the outside could come and steal them, change them or what have you. That's not nice, and you might be thinking, well whatever they are just like those cheap worker no one cares about, but I do and so does the the flow.  To make thing short … if every variable in a back system has attr_accesor on their variables you'd be able to change you balance from your account.
So as I went I toyed around the variables giving them some access depending on what my computer asked me, but I started by making the reader and only as I was needing them. At the end it looked like this

class BingoBoard
  attr_reader :game, :letter, :number
  attr_accessor :bingo_board


But I'm sure online bingo_board don't have that setting, anyway it worked for now. There might be another way to revamp this
  def cross_number
    row = @game.index(letter)
    @bingo_board = @bingo_board.each { |x|
      if x[row] == @number
        x[row] = "X"
      end}
  end

 Anyway so I call it several times to test it out, so far it seams to be working but I'm not sure if it's destrcutive
"Annunciator calls on the mic:G89!"
"Annunciator calls on the mic:G52!"
"Annunciator calls on the mic:B56!"
["B", "I", "N", "G", "O"]
["X", "X", "X", "X", "X"]
["X", "X", 75, "X", 73]
["X", 85, "X", "X", 57]
["X", "X", 96, "X", 51]
["X", 70, 54, 80, "X"]

And then I know it actually stored G89!

So by now my class looks like this, with matching ends and other fancy things
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
end

So I'm obviously super excited at this point? 
But how to tell that you won?
So I started thinking on the ways my very instructive video told me how to win a BINGO
So first I had to flatten de array becuase I figured that every "X" that would be on the same row how have the same amount of spaces between the other "X" and it seamed harder to me to first access every sub array and the go to the index [0] but I'm sure there's a method to do that too. Ruby has all the cool methods

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

So the for i in (0..4) is basically so I could go make it evaluate every row, so if I start on the second item and add 5 that will also give me the element right inside it. Notice that my method is not destructive board is sort of like a temporal variable that only exists when I call I ask my computer did_i_win_vertical?
I think she is very kind because she could have replied, why do you ask with such stupid formula, i obvioslu know what goes own under the engine of ruby.But I would have replied… it's not for you, it's for whom ever read this a few months from now, so that they'll know what's going on. It's best practice and it make collaborating more efficient. 
So then I wanted to evaluate the horizontal way of winning and I wrote the following, because I wanted to use my inner array structure
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
Then for both the diagonal one I went back to flattening my array, basically because it seamed easier that to substract or add to the index number of an inner subarray while iterating over every subarray to open it
  def diagonal_win
    board = @bingo_board
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

end

And ofcourse every time my computer told me I win because I never call on the new_board method I just used my first board that was already set to win every single time
So I of course felt like I winner and my computer even told me so, Plenty of times actually!
=end