// Separate Numbers with Commas in JavaScript **Pairing Challenge**
//Nayeli Carolina Hernandez Medellin
//Carolina Medellin

// I worked on this challenge with: .

// Pseudo-code
//make number in to string
//make that string in to array
//loop over the array every 4 elements append a comma in to thre array
//place holder for the array
//function
//newNumber=[];
//for loop
//push or append or insert comma
//print new Number
//end of function


// // Initial Solution
// var numCommas = function(number) {
//   var num_array = number.toString().split("");
//   for (var i = 3; i < num_array.length; i += 4) {
//     num_array.splice(num_array.length-i, 0, ",");
//     console.log(num_array[num_array.length - i]);
//   }
//   console.log(num_array.join(""));
// }




// Refactored Solution

var numCommas = function(number) {
  var num_array = number.toString().split("");
  for (var i = 3; i < num_array.length; i += 4) {
    num_array.splice(num_array.length-i, 0, ",");
  }
  console.log(num_array.join(""));
}



// Your Own Tests (OPTIONAL)

 var test_number = 1234567895;
numCommas(test_number);


// Reflection
/* 

Answer the following questions in the reflection section of your nums_commas.js file:
• What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
Loops had to be done manually that allowed to forgo some methods but it made it way less automatic and the code was not as cleans as it normally is in Ruby.
• What did you learn about iterating over arrays in JavaScript?
I learned that you can do iterations in steps and the don't necessarily need to start in zero
• What was different about solving this problem in JavaScript?
We didn't have access to the cool Ruby methods.
• What built-in methods did you find to incorporate in your re-factored solution?
we learned that if you call string as method we have to use ()
and we can use split with out the regex
function numCommas(number) {
  
} -> we did not use this because it's not best practice, it would make our f global and potentially have 


*/