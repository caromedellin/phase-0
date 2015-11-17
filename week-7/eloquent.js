// Eloquent JavaScript
var text = "Back to good old Java JavaScript I'm going to test this since I suck at writing";
// Run this file in your terminal using `node my_solution. JS. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var testVar = "I'm the first JavaScript file in the awesome new computer!";
console.log(testVar);
var illustration = ["Thus", "for example", "for instance", "namely", "to illustrate", "in other words", "in particular", "specifically", "such as"]


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var me = {name:"Carolina", age: 27, favoriteFood: ["tacos", "dairy","fish"], quirk: "Talking too much and in a very exaggerated way, for instance everything should be as awesome as unicorns with machine guns on magical substances" }

// Functions
//I realize JavaScript is not as automatic as ruby, I had become way to used to the re factored unless!
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


// // Data Structures: Objects and Arrays
// // Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
// • Introduction
// • Did you learn anything new about JavaScript or programming in general?
//   Yes I understood more about the flow and calling functions, also about how variables are assigned.
// • Are there any concepts you feel uncomfortable with?
// I feel a bit uncomfortable with come of the Object Oriented methods.

// • Ch. 1: Values, Types, and Operators
// • Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// Strings, Numbers and booleans are JavaScript primitives. We use variables to store data, but we can also use arrays to store collections of data.
// • Main difference is with the operators, in JavaScript the == operator only describes that they have the same value so. So num == num.to—string
// • Changing objects is different to!
// • ParseInt("50") vs "50".to_i
// • Ch. 2: Program Structure
// • What is an expression?
// An expression is a part of the code that produces a value
// What is the purpose of semicolons in JavaScript? Are they always required?
// They are required to signal that an expression has ended, sometimes Java Script allows you to omit them 
// • What causes a variable to return undefined?
// In JS it's possible to declare a variable with the value undefined and it will still run it it is different than defining  an empty variable.
// • Write your own variable and do something to it in the eloquent.js file.
// Did that! 
// • What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// It's similar to puts and print since it prints  something into the console.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Enlaces a un sitio externo.)
// Rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
//  
//  
// • Describe while and for loops
// I loved the description eloquent JavaScript for it the while and loops because it points that normally a program will have a linear path which is a flow into interrupt it you can write a while loop and dad will run in circles until the while breaks.
// The for loop on the other hand also interrupts the flow.
// To break a loop you need a break statement or you can also use a counter and set it as statement?
// • What other similarities or differences between Ruby and JavaScript did you notice in this section?
// The flow is still the same The main difference are in the syntax is that is used
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// • Ch. 3: Functions
//  (Skip the sections on closure and recursion)
// • What are the differences between local and global variables in JavaScript?
// • When should you use functions?
// You use functions to modify data, variables are to store it and functions to modify it, a function takes an argument and makes something else out of it, it's also a not destructive method. Since you normally have to assign them to a variable or console log it to see any changes.
// • What is a function declaration
// It's a piece of program wrapped in a value, so you can reuse it later or reassign it.
// A function declaration is similar to a method, it's a longer syntax than ruby's methods and more excel like. It reminds me of a mathematical function. Functions also have their own scopes. 
// • Complete the minimum exercise in the eloquent.js file.
// FIZZBUZZ
for(i=1;i<=20;i++){
    if(i%3===0 && i%5===0){
        console.log("FizzBuzz");}
    else if(i%3===0) {
        console.log("Fizz");}
    else if(i%5===0) {
        console.log("Buzz");}
    else{
        console.log(i);}
    }

// • Ch. 4: Data Structures: Objects and Arrays
// Numbers, Booleans, and strings are the bricks that data structures are built from
// The array it's the way JavaScript saves sequences of value, it's a data type. If it’s between square brackets and separated by commas, then it’s an array!
// var myFriends = [“dog”, “cat”, “another dog”];

console.log(myFriends[1]);
// → “cat”

// the index number also start as zero, just like do in Ruby mainly because this is a long tradition in tech, and it’s followed regularly. 
// • What is the difference between using a dot and a bracket to look up a property? Ex. array.max vsarray["max"]

// The most common ways to access properties in JavaScript are with a dot and with square backets. 
// o Value.x
// o Value[x]
// The main difference is in how x is read by the compiler. If you use the .x notation you must make sure x is a variable. As opposed to the [x] notation in with it tries to first evaluate x as an expression and then use the result of it as a property name. in that case x could be (2+2).
// ♣ What is a JavaScript object with a name and value property similar to in Ruby?
// Objects are arbitrary collections of properties, we can add and remove things as we see fit. They are created with curly brace notation and spaces are not significant inside them. Properties with unvalid names you need to put in between quotes.
var averageDay = {
  breakfast: false,
  events: ["Take naps", "Drink wine", "Exercise", "click computer", "Stalk strangers on Instagram "]
  };

// It's similar to a Hash in ruby. Something very confusing about objects is that they have 2 meanings in JavaScript. At the start of a statement, they start a block of statements and in any other position it’s just to describe an object. But thanks god this is not typical in programs so they are normally just used to describe objects or so my current book describes.
//   Although I have seen some videos about using the ruby hashes to re-factor methods and that completely blew my mind! I guess that is similar to this, but I will not get in depth with those options.
//   If we try to access a property that doesn't exit the program will spit us out an undefined value. And so we’ll now that spot is available to be defined so it’s not that bad. We can assign values inside it using the = operator just like to in ruby.
//  I enjoy the eloquent JavaScript description of an object resembling an octopus, and for that when we use the delete operator we’d be cutting of a tentacle from thagt object.
// The we have binary operator to check for things inside the object
// • delete
// • in
// • typeof
// Mutability: Objects can be modified, unlike values such as string, numbers and Booleans. Such values are immutable. 
// As Maps: They also act as a way to relate to values, 
// 7.4 Reflection
// In the reflection section of the manipulating_objects.js file, answer the following questions:
// Objects in JavaScript can be compared to objects in real life, they are standalone entities each one has their own properties and type. So you could compare them to real life things, such as a dog. Every dog has a color, a type a name that defines them. 
// You can access their properties with property name
// dog.hairColor
// Like all JavaScript variables, they are case sensitive. You can define a property by giving it a value, for instance:
Var myDog = new Object ( );
myDog.name = “Dosha”;
myDog.hairColor = “Black and White”;
myDog.age = 3;
// You can also access these properties with the bracket notation. Objects are like the Ruby Hashes, associative arrays, so in that sense they can be multidimensional! 
myDog[“name”] = “Dosha”;
myDog[“hairColor”] = “Black and White”];
myDog[“age”] = 3;
// (my dog is actually 5 but likes to lie about her age)
// Methods: 
//   A method is a function associated with an object. We define them in the same way we would define a property. The difference is that we write a function right after the equal signs instead of string or a number; In the following example I will illustrate woman change their age every year. This year I will be 25, but next year I'm not sure
var me= new Object();
me.name = "Carolina";
me.age = 28;
// and I make my set age method that will make me younger just like in the code academy example.
me.setAge = function (newAge){
  me.age = newAge;
};
// here is where the magic happens, if you don't call the method, the method will just rest on top of your program defined but nothing is changed nor returned.
me.setAge(25);
// Methods are important to change property values and also to make calculations based on the object's properties
// • What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// • How difficult was it to add and delete properties outside of the object itself?
// • What did you learn about manipulating objects in this challenge?
// Why do we need Object Oriented Programing?
// What happens if that you need to organized it, and it becomes easy to use, and maintain. If you design your code in terms of the real world then if becomes easy to understand if becomes independent of the coder.
// Abstraction
//   It exposes what's necessary, it's to remove complexity
//   Don't show unnecessary things
// Encapsulation
//   Hide complexity. In the sense that it complements abstraction
//   Abstraction is more for design it's  to hide things from the user, to declare private methods.

