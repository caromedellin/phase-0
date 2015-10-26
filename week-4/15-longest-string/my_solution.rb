
def longest_string(list_of_words)
  # Your code goes here!
  longest = list_of_words[0]
  print longest
  i=0
  while i < (list_of_words.length)
    if longest.length < list_of_words[i].length
      longest = list_of_words[i]
    end
    i += 1
  end
  return longest
end