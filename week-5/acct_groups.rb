array=["one","two","three","four","five","1","2","3",4]
array= array.shuffle
def groups(array)
  if (array.length%5) > 3
    i = 6
    while i < array.length
      array.insert(i, "-")
      i += 6
    end
    array = array.join.split("-")
  else
    i = 5
    while i < array.length
      array.insert(i, "-")
      i += 5
    end
    array = array.join.split("-")
  end
  return array
  
end
array= groups(array)
groups_new = Hash.new { |array| i = i }
print groups_new
#pomodoro time 30 min but I spent all day yesterday thinking about this random method
#I'm still trying to see how it works

=begin
  
rescue I MADE THIS LOOP TO UNDERSTAND HOW THE NEXT LOOP WORKS
IT'S A LOOP TO MAKE AN ARRAY RANDOM FROM SCRATCH 
arrayTemp= nil
def iterate(array)
  i=0
  j=i+1
  puts "-----1st Loop-----"
  arrayTemp = array[i]
  puts "after assigning array to index=i first time=#{arrayTemp}"
  array[i] = array[j]
  puts "array[i]=array[j]loop1=#{array[i]}"
  array[j]+= arrayTemp
  puts "loop1 after arrayj = array temp #{array[j]}"
  puts "-----2nd Loop-----"
  puts "Array[i] before add counter => #{array[i]}"
  i=i+1
  j= i+1
  arrayTemp = array[i]
  puts "array[i] after counter #{array[i]}"
  puts array[i]
  puts "after assigning array to index=i second time=#{arrayTemp}"
  array[i] = array[j]
  puts "array[i]=array[j]loop1=#{array[i]}"
  array[j]+= arrayTemp
  puts "loop1 after arrayj = array temp #{array[j]}"
  puts "-----3rd Loop-----"
  i=3
  arrayTemp = array[i]
  puts  array[i]
  puts  arrayTemp
  array[i]=array[j]
  puts array[j]

end

array = ["one","two","tree","four"]
=end
=begin
I'M STILL WORKING ON THIS


def array_shuffle(array)
  i = 0
  j = 0
  temp = nil
  for i in (array.length-1)..0
    j=(rand(i+1)).to_f
    temp = array [i]
    array[i] = array[j]
    array[j] = temp
    i-=1
  end 
  puts array[j]
end
  
=end

=begin 
PSEUDO CODE:
1.SUFFLE THE ARRAY

2.VERIFY THE REMANENT IS BIGGER THAN 2
3.IF IT IS BIGGER THAN 2 DIVIDE THE ARRAY BY 5 IF NOT BY 4
METHOD
  IF (ARRAY'S LENGTH)%5 >=3
    FUNCTION(INSERT (,)AFTER EVERY 5 ELEMENTS)
      >>> LOOP USING A COUNTER ADD A COMMA EVERY LOOP IN THE SPECIFIC PLACE
          ADD 6 TO IT AT THE END OF EVERYLOOP
          COUNTER = 6
          WHILE COUNTER< ARRAY.LENGTH
            INSERT IN ARRAY "," IN POSITION ARRAY[I]
          COUNTER +=6
          END 
    ENDFUNCTION
  ELSE 
    FUNCTION(INSERT (,)AFTER EVERY 4 ELEMENTS)
      >>> LOOP USING A COUNTER ADD A COMMA EVERY LOOP IN THE SPECIFIC PLACE
          ADD 5 TO IT AT THE END OF EVERYLOOP
          COUNTER = 5
          WHILE COUNTER< ARRAY.LENGTH
            INSERT IN ARRAY "," IN POSITION ARRAY[I]
          COUNTER +=5
          END 
    ENDFUNCTION
    RETURN ARRAY
  END
  SPLIT RETURN ARRAY AT ","
  
  MAKE A HASH OUT OF THE SEPARATED BY COMMA ARRAYS
  

END

5.MAKE THOSE GROUPS SEPARATE COLLECTIONS

=end

