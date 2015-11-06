#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
class Name
  def my_name
    return "Carolina"
  end
end

class Greeting
  def initialize
    @name = Name.new
  end

  def greet
    p "Hello #{@name.my_name}! How wonderful to see you today."
  end
end

hi = Greeting.new
hi.greet



# Reflection
=begin
  
 • What is a reader method?
• Provides a method that creates readingg access, it's a getter method because it gets the attribute of the instance you created with the class.
• What is a writer method?
• Provides a method that creates writting access, this one is a setter ethod, in other languages they are called mutators
• What do the attr methods do for you?
• Methods are being created at run time, or as the proggram is running, and it's followed by a symbol and it actually creates a method (in a verbose way) inside the class. This made me unsure of what actually happens when you refactor in ruby, because this seams more complex than a simple refactoring.
• It also makes the code look cleaner as a one liner
• Attribute accesor takes care of both
  • This is domain specific language, meaning that is only for ruby language (DSL)
• This is supposed to be meta programming, that is writting code that writes more code based on the method arguments. (All of this blew my mind[insert screaming emoji])
  • 
• We can even combine them like accesors. 
• They make instance variable available, they help you un encapsulate your variables
• Should you always use an accessor to cover your bases? Why or why not?
  • It depends on how much you want to expose you variables to being changed, if the attribute accesor is used they can be easily changed
  • Also atrr has been changes in the latest ruby version, now we have accessor, writer and reader
• What is confusing to you about these methods?
• The passing of messages between objects it's confusing
=end