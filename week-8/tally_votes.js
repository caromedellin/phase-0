// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// for(voter in votes)
//   for (office in voter)
//     if voter count has an object of everything that is nested under office
//       (name under office) inside VoteCount +=1
//     else
//       name(under office) inside VoteCount =1
// next error is to identify winner
// since voteCount has new objects assigned I’ll iterate over them
// for every office in voteCount
// create a place holder with the maximum of votes (so there will be 4 max votes equal to 0)
// for every candidate for each office
//   if the value inside the candidate is greater than the place holder 
//     place holder = value inside candidate
//     office inside officer is reassigned to candidate every loop (only when condition is met)


// __________________________________________
// Initial Solution

// for (var voter in votes){
//   for(var office in votes[voter]){
//     console.log(office)
//     if(voteCount[office].hasOwnProperty(votes[voter][office])){
//       voteCount[office][(votes[voter][office])] += 1;
//     }
//     else {
//       voteCount[office][(votes[voter][office])] = 1;
//     }
//     console.log(votes[voter][office])
//   }
// }

// console.log(voteCount.president);
// for (var office in voteCount) {
//   var winnerVote = 0;
//   for (var candidate in voteCount[office]) {
//      console.log(candidate)
//      if(voteCount[office][candidate] >= winnerVote) {
//       winnerVote = voteCount[office][candidate]; 
//        officers[office] = candidate;
//      }
//    }
//   };






// __________________________________________
// Refactored Solution
for (var voter in votes){
  for(var office in votes[voter]){
    if(voteCount[office].hasOwnProperty(votes[voter][office])){
      voteCount[office][(votes[voter][office])] += 1;
    }
    else {
      voteCount[office][(votes[voter][office])] = 1;
    }
  }
};

for (var office in voteCount) {
  var winnerVote = 0;
  for (var candidate in voteCount[office]) {
     if(voteCount[office][candidate] >= winnerVote) {
      winnerVote = voteCount[office][candidate]; 
       officers[office] = candidate;
     }
   }
  };






// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// I like loops in JS mainly because I read that even though they are not the most elegant they are the fastest
// Or so I read, I guess in a function this small it doesn't particularly matter but if this were a national vote I'd go for a for loop
// I learned that it's complicated to always grasp the proper object and for that reason I like to use the console.log and check first if I'm grabbing the proper object.
// I find it ends up saving me time..
// Were you able to find useful methods to help you with this?
// Yes the hasOwnProperty was very useful, Every object descended from Object inherits the hasOwnProperty method.
//  This method can be used to determine whether an object has the specified property as a direct property of that object; unlike the in operator,
//  this method does not check down the object's prototype chain. 

// What concepts were solidified in the process of working through this challenge?
// It solidify the accessing of values for me and also the pushing objects and values in to an existing object.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)