// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Think of a game
// Overall mission: transalte that game to javascript
// Goals:
// Characters:
// Objects:
// Functions:

// Pseudocode
// make a function thnat displays the rules as you open the file
//Make a variable player with a board 
// make a function to display board
//make a function that marks an ex on each index
//make a function to check if the player won
//
//

// Initial Code
var gameRules = function(){
    console.log("select a position between 1 to 9 \n with this you'll select a position");
  };
gameRules();
console.log("input, number 1 to 9 \n In this format player.answer(1) \n or player.answer(2)")
var player = {
  board: ["","","","","","","","",""],
  display: function(){
    console.log(this.board);
  },
  answer: function(x){
    this.board[x + 1] = "X";
  }

};

player.display();
player.answer(2);
player.display();



// Refactored Code






// Reflection
//
//
//
//
//
//
//
//

