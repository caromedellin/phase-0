# Release 3:

class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  # This code is no longer needed.
  # def what_is_age
  #   @age
  # end

  # This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

  def what_is_name
    @name
  end

  def change_my_name=(new_name)
    @name = new_name
  end

  def what_is_occupation
    @occupation
  end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

instance_of_profile = Profile.new
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info
=begin

What changed between the last release and this release?
What was replaced?
Is this code simpler than the last?

Instead of writting 
def whats_age
  @age
End
Also instead of the chage_my_age
now it's simple stated as a writer too
    attr_writer :age 
So by calling  .age you can now access it and change it too

Finally on this one the attributes have been refactored with the accesor
so they do both read and write
    attr_accessor

They used the short version att_reader :age
Aside of that the mechanics are the same, it does improve readability and it is a lot more simple, plus the names of the variable is shorter but it still makes perfect sense

=end
