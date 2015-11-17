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
