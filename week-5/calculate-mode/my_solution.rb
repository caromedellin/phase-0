# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin
# What is the input?
an array
# What is the output? (i.e. What should the code return?)
a collection with of the object and the times it appears in the array

# What are the steps needed to solve the problem?
1.Create a container for the collection
2.set a counter for every time the object appears
3.iterate over array to count every object
4.increase counter for every repetition
set = new collection
for each item in array do
  collection [item] += 1
end

=end


# 1. Initial Solution
numbers = [1, 2, 3, 4, 5, 5, 7]
strings = ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]
def mode(array)
  tempHash = Hash.new(0)
  array.each {|item| tempHash[item] +=1 }
  max = tempHash.max_by{|k,v| v}
  #array.map { |key, _| key }
  maximun = max[1]
  newHash = tempHash.find_all { |key, val| val >= maximun }
  new = newHash.map {|k,v| k}
  return new
  end 
mode(strings)




# 3. Refactored Solution

#Still working on it
#I did ended up using map to pass the tests, makes it a lot more simple to return an array
#I was doing select and that only returns the first value


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
Arrays and Hashes
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes pseudo code really helps

What issues/successes did you run into when translating your pseudocode to code?
that ruby does not grab everything that matches a value, you have to reduce the array according to that
value but it doesn't access 2 keys at a time.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?  
I find refactoring over a hash complicated if you don't use the built in methods like .each

=end