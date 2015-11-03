# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(labels)
    if labels.length <1
      raise ArgumentError
    end
    @labels = labels
  end

  def sides
    @sides = (@labels.length)
    return @sides
  end

  def roll
    return @labels.sample
  end
end



# Refactored Solution
=begin
  I don't see a way to refactor this yet but I know the same can be achieved in a more painful way iterating over every element of the array
  or using .shuffle and the .first or.last 
  So many methods in ruby!
=end