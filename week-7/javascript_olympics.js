 // JavaScript Olympics

// I paired with Natalie Polen on this challenge.

// This challenge took me 1.5 hours.

// Bulk Up

function athletes(list) {
  for (i = 0; i < list.length; i++) {
    console.log(list[i][0] + " won " + list[i][1]);
  }
};

var list = [["Natalie", "soccer"], ["Carolina", "tennis"], ["Sasha", "football"]];

console.log(athletes(list))

// Jumble your words

function backwards(string) {
  string = string.split('').reverse().join('');
  console.log(string);
}

backwards("hey!");

// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6];

function evens(array) {
  newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      newArray.push(array[i]);
    };
  };
  console.log(newArray);
}

evens(array)

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name,
    this.age = age,
    this.sport = sport,
    this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// // JavaScript Olympics

// I paired with Carolina Medellin on this challenge.

// This challenge took me 1.5 hours.

// Bulk Up

function athletes(list) {
  for (i = 0; i < list.length; i++) {
    console.log(list[i][0] + " won " + list[i][1]);
  }
};

var list = [["Natalie", "soccer"], ["Carolina", "tennis"], ["Sasha", "football"]];

console.log(athletes(list))

// Jumble your words

function backwards(string) {
  string = string.split('').reverse().join('');
  console.log(string);
}

backwards("hey!");

// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6];

function evens(array) {
  newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      newArray.push(array[i]);
    };
  };
  console.log(newArray);
}

evens(array)

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name,
    this.age = age,
    this.sport = sport,
    this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
ABOUT OBJECTS
This solidified my learing on how to construct objects.
In the reflection section of the manipulating_objects.js file, answer the following questions:
Objects in JavaScript can be compared to objects in real life, they are standalone entities each one has their own properties and type. So you could compare them to real life things, such as a dog. Every dog has a color, a type a name that defines them. 
You can access their properties with property name
dog.hairColor
Like all JavaScript variables, they are case snetitive. You can define a property by giving it a value, for instance:
Var myDog = new Object ( );
myDog.name = “Dosha”;
myDog.hairColor = “Black and White”;
myDog.age = 3;
You can also access these properties with the bracket notation. Objects are like the Ruby Hashes, associative arrays, so in that sense they can be multidimensional! 
myDog[“name”] = “Dosha”;
myDog[“hairColor”] = “Black and White”];
myDog[“age”] = 3;
(my dog is actually 5 but likes to lie about her age)
Methods: 
  A method is a function associated with an object. We define them in the same way we would define a property. The difference is that we write a function right after the equal signs instead of string or a number; In the following example I will illustrate woman change their age every year. This year I will be 25, but next year I’m not sure
var me= new Object();
me.name = "Carolina";
me.age = 28;
// and I make my set age method that will make me younger just like in the code academy example.
me.setAge = function (newAge){
  me.age = newAge;
};
// here is where the magic happens, if you don’t call the method, the method will just rest on top of your program defined but nothing is changed nor returned.
me.setAge(25);
Methods are important to change property values and also to make calculations based on the object’s properties
• What tests did you have trouble passing? What did you do to make it pass? Why did that work?
• How difficult was it to add and delete properties outside of the object itself?
• What did you learn about manipulating objects in this challenge?
Why do we need Object Oriented Programing?
What happens if that you need to organized it, and it becomes easy to use, and maintain. If you design your code in terms of the real world then if becomes easy to understand if becomes independent of the coder.
Abstraction
  It exposes what’s necessary, it’s to remove complexity
  Don’t show unnecessary things
Encapsulation
  Hide complexity. In the sense that it complements abstraction
  Abstraction is more for design it’s  to hide things from the user, to declare private methods.

*/