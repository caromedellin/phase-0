# Pad an Array

# I worked on this challenge [by myself, with: Nicola ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#the input is an array, a minimun size for the array and an optional argument for what the array should be padded with
# What is the output? (i.e. What should the code return?)
#Pad! will change the original array to the minimun size and add the needed values
#Pad will return a new array
# What are the steps needed to solve the problem?
#pad!
#check length of input array
#compare it to the minimum size
#add nil values to array if minimum size is larger than input size
#if there are optional values relace nil


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  end
  if min_size > array.length
    remainder = min_size - array.length
    remainder.times do array << value
    end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  end
  if min_size > new_array.length
    remainder = min_size - new_array.length
    remainder.times do new_array << value
    end
  end
  p new_array
end


pad([1, 2, 3], 5, "apple")






# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  unless array.size > min_size
    (min_size - array.size).times { array << value }
    return array
  end
  return array
end

def pad(array, min_size, value = nil)
  #new_array = []
  #new_array = new_array + array
  # we took away this first two lines and replaces them with map method
  new_array = array.map { |e| e }
  unless array.size > min_size
    #padding = min_size - array.size
    #we passed it directly to times method
    #padding.times do 
    #(min_size - array.size).times do
    #  new_array << value 
    #end
    (min_size - array.size).times { new_array << value}
    return new_array
  end
  return new_array
end



# 4. Reflection

#Were you successful in breaking the problem down into small steps?
#Yes we were we started from making sure the length was being calculated

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We ended up doing it but at the beggining we weren't sure our code was even saving the variables

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#No it wasn't we weren't caving the variables in the proper places

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#map method was our fav

#How readable is your solution? Did you and your pair choose descriptive variable names?
#we used size instead of length for readability purposes

#What is the difference between destructive and non-destructive methods in your own words?
#destructive changes the variable and non-destructive makes another variable 
