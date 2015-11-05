# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each {
  |element|
  if element.kind_of?(Array)
    element.each {|ielem|  p ielem += 5}
    #if ielem.kind_of?(Array)... and so on
    #array.flatten
  else 
    p element += 5
  end
  }
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
new = startup_names.flatten.map{|element|  element + "ly"}
p new


=begin
• What are some general rules you can apply to nested arrays?
• Check if they are array
  • We can do this using an if.
  • Use an each do, if we don't want to flatten the array or flatten de array and then map it
• Keep in mind that we can do an each do inside of another one if the element turns out to be an array
  • So iterations inside iterations are possible 
• 
• What are some ways you can iterate over nested arrays?
  • Built in methods for arrays such as map, flat etc. or use an each do
• Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  I think it's hard to automatically think of the index of a nested array that has been nested in several others, so I proceeded in this fashion
  • P array[ i ]
  • P array[ i ] [ i ]
  • And so on to painlessly make sure I was looking at the correct array, but I'm sure it will become more automatic one day
For the hashes it's important to keep in similar fashion except instead of an index number you have a key that can also be a symbol.
 
 An important thing I learned today was to always close my comments even if they are at the end
 Ruby will give you an error if you don't (=end always!) 
=end