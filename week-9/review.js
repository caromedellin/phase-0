// // PSEUDO CODE
// DRIVER CODE
// ARRAY = SOME text

//   PLACE HOLDERS:
// OBJECTHOLD = EMPTYOBJECT
// maxFreq = 0
// mostFreqWord = EMPTY
// for(every word in array)
//   if(objectHold has word)
//     word in objectHold +=1
//   else
//     push word in objectHold with value = 1
  
// close for

// after objectHold has some word with the frequencies assigned

// for (word in objectHold)
//   if(value in word > maxFreq)
//     maxFreq = value in word
//     mostFreqWord = word
//   end
// end
// return place holdes variables or console.log them

// HOW IT GOT DEVELOPED

var text = ["some","a", "text", "a"];
console.log("My driver code is this array-> " + text);
var objectHold = {};
var maxFreq = 0;
var mostFreqWord = undefined;
for (var word in text){
  console.log("every element of the array text -> " + text[word]);
  if (objectHold.hasOwnProperty(text[word])){
    objectHold[(text[word])] += 1; 
  } else{
    objectHold[(text[word])] = 1;
  };
}
console.log("Object Hold after my for loop -> " + objectHold);
for (var word in objectHold){
  console.log("every loop for word in objectHold -> "+objectHold[word]);
  if (objectHold[word] > maxFreq){
    maxFreq = objectHold[word];
    mostFreqWord = word;
  }
}
console.log("Max Frequency is: " + maxFreq);
console.log("The most Frequent Word is: " + mostFreqWord);

// REFACTORED
// Now refactored to take any string
var mostRepitedWord = function (text){
  text = text.split(" ");
  var objectHold = {};
  var maxFreq = 0;
  var mostFreqWord = undefined;
  for (var word in text){
    if (objectHold.hasOwnProperty(text[word])){
      objectHold[(text[word])] += 1; 
    } else{
      objectHold[(text[word])] = 1;
    };
  }
  for (var word in objectHold){
    if (objectHold[word] > maxFreq){
      maxFreq = objectHold[word];
      mostFreqWord = word;
    }
  }
  console.log("Max Frequency is: " + maxFreq);
  console.log("The most Frequent Word is: " + mostFreqWord);
};

// // REFLECTION
// What concepts did you solidify in working on this challenge? 
// It solidify the accessing of values for me and also the pushing objects and values in to an existing object.
// What was the most difficult part of this challenge?
// not getting confused with Ruby syntax 
// Did you solve the problem in a new way this time?
// yes I used more place holder variables
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// I didn't use the magic ruby methods but I still had to create an object to hold the frequencies
