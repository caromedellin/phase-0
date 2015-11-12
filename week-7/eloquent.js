// Eloquent JavaScript
var text = "Back to good old Java JavaScript I'm going to test this since I suck at writing";
// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var testVar = "I'm the first js file in the awesome new computer!";
console.log(testVar);
var illustration = ["Thus", "for example", "for instance", "namely", "to illustrate", "in other words", "in particular", "specifically", "such as"]


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var me = {name:"Carolina", age: 27, favoriteFood: ["tacos", "dairy","fish"], quirk: "Talking too much and in a very exagerated way, for instance everything should be as awesome as unicorns with machine guns on magical substances" }

// Functions
//I realize JavaScript is not as automatic as ruby, I had become way to used to the refactored unless!
// I do have to say that Ruby set the bar high in terms of expectations of what my compiler should be doing for me.
// Complete the `minimum` exercise.
var minimum = function (x , y) {
  if (x > y){
    console.log(y);
  }else { 
    console.log(x);
  }
}
minimum(1,5);
numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

  for (i=1ß; i <= 15; i++){
    if(i % 3 === 0 &&  i % 5 === 0){
       console.log("FizzBuzz");
    } else if (i % 5 === 0){
      console.log("Buzz");
    } else if (i % 3 === 0){
      console.log("Fizz");
    } else{
      console.log(i);
    };
  };

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.