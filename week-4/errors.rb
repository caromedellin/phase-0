# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#error.rb
# 2. What is the line number where the error occurs?
#15
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#expecting keyword_end
  #from /Users/caro/.rvm/rubies/ruby-2.2.2/bin/irb:11:in `<main>'

# 5. Where is the error in the code?
#Forgot to close the while
# 6. Why did the interpreter give you this error?
#also the # in the puts

# --- error -------------------------------------------------------

south_park

# 1. What is the line number where the error occurs?
#37
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#the variable is not defined
# 5. Why did the interpreter give you this error?
#Because it's not yet defined as a variable

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
#52
# 2. What is the type of error message?
#nomethod
# 3. What additional information does the interpreter provide about this type of error?
#ndefined local variable or method `cartman()' for main:Object
# 4. Where is the error in the code?
#The method need to be defined before running
# 5. Why did the interpreter give you this error?
#Because it need you to complete it

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#68
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#68 cartmans_phrase did not need an argument it was not defined like that
# 5. Why did the interpreter give you this error?
#Because the method was not asking for an argument it did not need it so it has no place for it

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#87
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
#Where it's the error in this code?
#in not passing an argument for the method, it need's it to transform it because that is the way it's defined



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#108
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2)

# 4. Where is the error in the code?
#Inputing 1 argument when you need 2 to make it work
# 5. Why did the interpreter give you this error?
# Because it needed an output like cartmans_lie(x,y)

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#123
# 2. What is the type of error message?
#TypeError means that the compiler can't do that to that particular type of data
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum, meaning it can't transform the string to numbers to multiply it
#This is actually good because otherwise we could have terrible errors in the code without even realizing it
# 4. Where is the error in the code?
#Trying to multiply a string instead of printing it 5 times or making 5 copies of it
# 5. Why did the interpreter give you this error?
#You can't multiply a string you have to define it you want to copy it, transform the characters in to a number and then multiply it or even just print it 5 times, it's different outcomes, you as a human have to make that choice

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#138
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#Trying to divide 20 by 0
# 5. Why did the interpreter give you this error?
#Because it's imposible to do simple math like this

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"
end


# 1. What is the line number where the error occurs?
#179
# 2. What is the type of error message?
#syntax
# 3. What additional information does the interpreter provide about this type of error?
#ruby was expecting the keyword end
# 4. Where is the error in the code?
#right after line 154
# 5. Why did the interpreter give you this error?
#Because it can't run the test without it having an end


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
Second one and last one because I'm still not familiar with rspec
How did you figure out what the issue with the error was?
Yes it's getting more comfortable
Were you able to determine why each error message happened based on the code? 
Yes it's very useful that it gives you the lines
When you encounter errors in your future code, what process will you follow to help you debug?
create a branch to debug, run tests and change one thing at the time in the exact location or around it.
it's a great tool
=end
