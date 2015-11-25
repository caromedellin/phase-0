# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# fibonacci formula 
# num = (16/10)^num/√5

# Initial Solution

def is_fibonacci?(num)
  x = 5 * num * num
  if (Math.sqrt(x + 4)-Math.sqrt(x + 4).floor).zero? || (Math.sqrt(x - 4)-Math.sqrt(x - 4).floor).zero?
    return true
  else
    return false
  end
end



# Refactored Solution
# I wanted to used the formula I still haven't fully solved it. I know you can create a series with inject and then check if the number is there.
# I'm behind a bit this week! I'll come back to this.






# Reflection
=begin
Release 2: Reflect
In the reflection section in your ruby_review.rb file, answer the following questions:

What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?
=end