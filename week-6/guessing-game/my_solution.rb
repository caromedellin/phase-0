
# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
=begin
class GuessingGame
  def initialize(correct_answer)
    @correct_answer = correct_answer
    @solved = false
  end

  def guess(guess)
    unless guess = @correct_answer
      @solved = false
    end
    if guess > @correct_answer
      return :high
    elsif guess < @correct_answer
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved
  end

end
=end



# Refactored Solution
class GuessingGame
  def initialize(correct_answer)
    @correct_answer = correct_answer
    @solved = false
  end

  def guess(guess)
    @solved = false
    if guess > @correct_answer
      return :high
    elsif guess < @correct_answer
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved
  end


end





# Reflection

=begin

On your own, create a commented section in your my_solution.rb file and write a (or create a video) reflection that answers the following questions:

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
When should you use instance variables? What do they do for you?
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  
=end