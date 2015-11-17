 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!


var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown",
}
// __________________________________________
// Write your code below.

var adam = new Object();
adam.name = "Adam";
terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
terah.children = {};
adam.spouse = terah;
var carson = new Object();
terah.children = {carson};
carson.name = "Carson";
var carter = new Object;
terah.children = {carson, carter};
carter.name = "Carter";
var colton = new Object;
terah.children = {carson ,carter , colton};
colton.name = "Colton";
adam.children = terah.children;





// __________________________________________
// Reflection: Use the reflection guidelines
// //7.4 Reflection
// In the reflection section of the manipulating_objects.js file, answer the following questions:
// Objects in JavaScript can be compared to objects in real life, they are standalone entities each one has their own properties and type. So you could compare them to real life things, such as a dog. Every dog has a color, a type a name that defines them. 
// You can access their properties with property name
// dog.hairColor
// Like all JavaScript variables, they are case snetitive. You can define a property by giving it a value, for instance:

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
//   A method is a function associated with an object. We define them in the same way we would define a property. The difference is that we write a function right after the equal signs instead of string or a number; In the following example I will illustrate woman change their age every year. This year I will be 25, but next year I’m not sure

var me= new Object();
me.name = "Carolina";
me.age = 28;
// and I make my set age method that will make me younger just like in the code academy example.
me.setAge = function (newAge){
  me.age = newAge;
};
// here is where the magic happens, if you don’t call the method, the method will just rest on top of your program defined but nothing is changed nor returned.
me.setAge(25);
// Methods are important to change property values and also to make calculations based on the object’s properties
// • What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// • How difficult was it to add and delete properties outside of the object itself?
// • What did you learn about manipulating objects in this challenge?
// Why do we need Object Oriented Programing?
// What happens if that you need to organized it, and it becomes easy to use, and maintain. If you design your code in terms of the real world then if becomes easy to understand if becomes independent of the coder.
// Abstraction
//   It exposes what’s necessary, it’s to remove complexity
//   Don’t show unnecessary things
// Encapsulation
//   Hide complexity. In the sense that it complements abstraction
//   Abstraction is more for design it’s  to hide things from the user, to declare private methods.

//
//
//
//
//


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)