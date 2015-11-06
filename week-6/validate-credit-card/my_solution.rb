# Pseudocode

# Input: Credit card Number (16 digits)
# Output:  true or false
# Steps:
# Put numbers into array
# Reverse array and take the second number and double it.
# Double every other number after that.
# Split up the numbers
# Sum up all the numbers
# Check if it is divisible by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

cc_number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,16]

class CreditCard
  def initialize(cc_number)
    @cc_number = cc_number
  end
  def check_card
    @cc_number.reverse!
    a = @cc_number.map!.with_index do |number, index| 
      if index % 2 == 1
        number * 2
      else
        number
      end
    end
    b = a.map do |number|
      number.to_s.split("")
    end
    b.map! {|element|
      if element.kind_of?(Array) 
        element.inject {|sum, num| sum.to_i + num.to_i}.to_i  
      end
    } 
    p b

    c = b.inject do |sum,num| 
      sum + num
    end
    p c

    return (c%10 == 0) ? true : false
    
    
    
    
    
    
    
    
  end
end
newAccount = CreditCard.new(cc_number)
p newAccount.check_card

#play with
=begin
 cc_number.reverse!
    a = cc_number.map!.with_index do |number, index| 
      if index % 2 == 1
        number * 2
      else
        number
      end
    end

b = a.map do |number|
  number.to_s.split("")
end
b.map! {|element|
  if element.kind_of?(Array) 
    element.inject {|sum, num| sum.to_i + num.to_i}.to_i
  
  end
  } 
p b

c = b.inject do |sum,num| 
  sum + num
end
p c

p (c%10 == 0) ? true : false

=end
=begin
  if number.kind_of?(Array) 
    number.inject {|sum, num| sum + num}
    
  end
=end




# GuessingGame.track
# 1,5,10

=begin
sum keeps a value between each element as you iterate

 def solved?
    if @input == @answer
      true
    else 
      false
    end
  end
@input == @answer ? true : false
=end