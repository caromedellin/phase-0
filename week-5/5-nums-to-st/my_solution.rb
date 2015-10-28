
# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def separate_comma (random_num)
  new_num = random_num.to_s.split ('')
   i = 4
    while i <= (new_num.length)
    new_num.insert(-i, ",")
    i += 4
    end
  puts new_num.join.to_s
end




# 2. Refactored Solution
# I can't think on a better way to refactor this, I still have to research more methods


# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#I knew I had to make it into an array and then split it and every 4 elements insert a comma in a way that did not replace the element
#Was your pseudocode effective in helping you build a successful initial solution?
# Yes it was because I'm not familiar with the ruby methods, getting there
#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I haven0t been able to find a method that does what I want it too, the built in ruby methods seam to iterate over every element and I can't make them skip elements
#How did you initially iterate through the data structure?
# I wanted to use a for loop but I couldn't make it work
#Do you feel your refactored solution is more readable than your initial solution? Why?
# I personally liked my solution but I can be improved
