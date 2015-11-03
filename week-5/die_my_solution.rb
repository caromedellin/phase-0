# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution
class Die
  def initialize(sides)
    if sides < 1
     raise ArgumentError.new("input a positive number")
    else
    @sides = sides
    end
  end

  def sides
    p @sides
  end

  def roll
    return Random.new.rand(1..@sides)  
  end
end
 


# 3. Refactored Solution







# 4. Reflection