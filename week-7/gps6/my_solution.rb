# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#It's similar to the spec it tells the compiler that before doing anything else
#it must check that this file exists in the same directory and it also has to be able to open it
# In this case it's a hash data base of the states
require_relative 'state_data'

class VirusPredictor
# This creates an instace variable for each one of the arguments it's requiring, in this case
# none of them seam to be set to default. But they get pulled from the hash
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# this calles for the methods defined below
  def virus_effects
    predicted_deaths(@population_density,@population,@state)
    speed_of_spread(@population_density, @state)
  end

  
  # if this is made private we can't access this information from outside the method until we create another function to access it on top of this one
# This is useful because we don't want the user or reader to just changhe the population density for instance at will
# calculates the number of people that will die with conditionals and using the instance variables
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# def full_list (state_list)
#   state_list.each do |key,value|
#     state = VirusPredictor.new(key,value[:population_density],value[:population])
#     state.predicted_deaths(value[:population_density], value[:population],key)
#     puts "!"
#     state.speed_of_spread(value[:population_density], key)
#     puts"."
#     state.virus_effects
#   end

# end
# REFACTORED
def full_list (state_list)
  state_list.each do |key,value|
    state = VirusPredictor.new(key,value[:population_density],value[:population])
    state.virus_effects
  end

end

#=======================================================================

# DRIVER CODE
full_list(STATE_DATA)
 # initialize VirusPredictor for each state
# puts(STATE_DATA["Alabama"][:population])
# puts(STATE_DATA["Alabama"][:population_density])
# STATE_DATA.each do |key,value|
#   puts (key)
# end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin 
• What are the differences between the two different hash syntaxes shown in the state_data file?
State key is a string, I read somewhere that symbols are easier on the compiler but string seam to be easier for printing. 
• What does require_relative do? How is it different from require?
It complements require, when access a require relative you are accessing a functionality, so it’s easier to use when developing. Since your files don’t get locked away. You can omit the rb extension because you are supposed to be using the same library path. 
• What are some ways to iterate through a hash?
My favorite it’s step, and map and each. I think the must common one to use is the each method.
What concept did you most solidify in this challenge?
I had to use this first to make sure I was accessing the proper data, Using JS is making me forget Ruby
# puts(STATE_DATA["Alabama"][:population])
# puts(STATE_DATA["Alabama"][:population_density])
# STATE_DATA.each do |key,value|
#   puts (key)
# end
ALSO TO UNDERSTAND THAT
Encapsulation hides complexity. In the sense that it complements abstraction and that abstraction is more for design it’s  to hide things from the user, to declare private methods.
In this case we used both and the result was an easy to understand code
=end