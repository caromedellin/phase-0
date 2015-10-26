
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin define total (takes array)
define a counter to iterate over the array while it's smaller than it's length
define sum to hold the sum of the array
make a loop to add to sum each new value
make sure the loop is closed
finished the method?
=end
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
def total (array)
  sum = 0
  for num in 0...(array.length)
    sum += array[num]
  end
  return sum
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(array)
  beginning = array[0].capitalize!
  for i in 1...(array.length)
    sum += "#{(array[i]).to_str} "
  end
  print "#{sum}."
end

# 6. sentence_maker refactored solution

