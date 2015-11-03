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
=beging
when you initialized Random.new it makes it possible to use a range with the random method
  so it has the enumerable module from what I understand, so it choose randomly from 1 to sides
  I think not including the last side because it's only (..) and not (...)
=end




# 4. Reflection
=begin
  My reflecting led me to the random method
  The random method was important to me because as I was doing my research I stumbled upon some info stating that some build in methods, like the Random from Javascript were not so great for generating random numbers, basically because they seam to overtime create distinct patterns, that is when you analyze the frequency of the results they are not all the same as you would expect for a totally random outcome, some results are more likely than other.
Now that would be a serious problem because a random method is probably the core base to creating a lot of programs, like the lottery I would suppose, maybe some speculating programs for finance I would suppose if they are creating different scenarios… So in Java Script there is function to do this that is supposed to be the correct and only way to shuffle an array and it's modeled to be similar to the  the Knuth or Fisher-Yates shuffle.
I obsessed over this for at least 3 days, picturing that maybe I could trick some poker online system and become rich right before they figured out my technique and send me to Mexico… Long story short I read that ruby actually used the Knuth or fisher yates shuffle in their method rand. I felt like I lost 3 days of my life day dreaming.

• What is an ArgumentError and why would you use one?
When you tell your class how to handle an exception, I think it is to provide a message of why it wouldn't work. And it only does it when the boolean you set it to retunr true
• What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
.new to make an empty object! And it gave it some enumerables… it was pleasing because I would have had to use sides+1 
• What is a Ruby class?
Class is a factory for objects that are very similar, blueprint similar, they respond the same way to the methods and recive similar atrributes according to the imput you give them. Like this one would create an army of die that would all yield a random side in a range from 1 to what ever you feed your class with.
    ○ Class = blueprint (zombie factory)
• Why would you use a Ruby class?
Well I had an idea that it could be used for UX design to manage a ton of personas, you give them the requiared attributes, set some to default and add some random choices and voilá you can have an army of people to test your code and you can even give them some actions defined by methods
• What is the difference between a local variable and an instance variable?
Instance variables are the ones you can use inside the methods or your class
• Where can an instance variable be used?
When you want to manipulate them much as you would do for a normal method, if you want a variable to be kind of global but only in your class, let's say you want to keep track of how many UX personas you have created you'd have to use @@ and not only @, and as best practice you'd put it before you start all your methods. Set it with a +1 every time you create a persona with your class and it will keep track of them
=end