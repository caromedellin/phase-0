#first irb
##What does puts do?
Puts prints an argument to the terminal
##What is an integer? What is a float?
Integer is the rounded number
Float uses decimals

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The float division does it as a calculator do and the integer division rounds down what ever the result is, mainly because the computer tries to give you an output in what ever unit you used at the beggining.

##Seconds in a year
´´´ruby

sec * min_in_hour * days_in_year * year
 => 1314000


´´´
##Minutes in a decade

´´´ruby


 min_in_hour * days_in_year * 10 * year
 => 219000 
 ´´


#Release 5: Exercises

##Defining Variables
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

##Simple String Methods
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

##Local Variables and Basic Arithmetical Operations
```ruby


```


##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Depending if you give it a float or an integer it will give you the answer in that same fashion

##What is the difference between integers and floats?
No decimals on integers

##What is the difference between integer and float division?
integer division gets rounded to the lowest nearer number

##What are strings? Why and when would you use them?
Text delimited by quotes

##What are local variables? Why and when would you use them?
Inside a function variables, you use them when you only need them for a certain function.

##How was this challenge? Did you get a good review of some of the basics?
Yes