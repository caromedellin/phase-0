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
//Make a variable player with a board, board will be an array with 9 positions and they will be marked according to the index
// 
//make a function that marks an ex on each index
// make a function to display board this will be called after the player changes the board that will be a variable than can be access from all the methods inside the object
//make a function to check if the player won. this funcrtion will contain the winning positions and check if they all have an "X" with conditional statements
/*
add a computer move after each turn that will take a random position from 0 to 8 if the position is not taken
the computerMove will only print the "O" if the spot is available that will be done with a conditional that will check for " "
*/

// Initial Code
var gameRules = function(){
    console.log("select a position between 1 to 9 \n with this you'll select a position");
  };
gameRules();
console.log("input, number 1 to 9 \n In this format player.answer(1) \n or player.answer(2)")
var player = {
  board: [" "," "," "," "," "," "," "," "," "],
  
  answer: function(x){
    this.board[x - 1] = "X";
  },
  display: function(){
    console.log(this.board[0] + "-" + this.board[1] + "-" + this.board[2]);
    console.log(this.board[3] + "-" + this.board[4] + "-" + this.board[5]);
    console.log(this.board[6] + "-" + this.board[7] + "-" + this.board[8]);
  },
  computerMove: function(){
    var move = Math.floor(Math.random() * 9)
    console.log(move);
    if (this.board[move]=== " "){
      this.board[(move)] = "0";
    };
    console.log(this.board);
  },
  win: function (){
    if (this.board[0]=== "X" && this.board[1]=== "X" && this.board[2]=== "X"){
      console.log("You win!");
    } else if (this.board[3]=== "X" && this.board[4]=== "X" && this.board[5]=== "X"){
      console.log("You win!");
    } else if (this.board[6]=== "X" && this.board[7]=== "X" && this.board[8]=== "X"){
      console.log("You win!");
    } else if (this.board[2]=== "X" && this.board[4]=== "X" && this.board[6]=== "X"){
      console.log("You win!");
    } else if (this.board[0]=== "X" && this.board[4]=== "X" && this.board[8]=== "X"){
      console.log("You win!");
    }
  }


};

player.display();
player.answer(8);
player.answer(2);
player.answer(3);
player.display();
player.computerMove();
player.win();

// Refactored Code
var gameRules = function(){
    console.log("select a position between 1 to 9 \n with this you'll select a position");
  };
gameRules();
console.log("input, number 1 to 9 \n In this format player.answer(1) \n or player.answer(2)")
var player = {
  board: [" "," "," "," "," "," "," "," "," "],
  
  answer: function(x){
    this.board[x - 1] = "X";
  },
  display: function(){
    console.log(this.board[0] + "-" + this.board[1] + "-" + this.board[2]);
    console.log(this.board[3] + "-" + this.board[4] + "-" + this.board[5]);
    console.log(this.board[6] + "-" + this.board[7] + "-" + this.board[8]);
  },
  computerMove: function(){
    var move = Math.floor(Math.random() * 9)
    if (this.board[move]=== " "){
      this.board[(move)] = "0";
    };
    console.log(this.board);
  },
  win: function (){
    if (this.board[0]=== "X" && this.board[1]=== "X" && this.board[2]=== "X"){
      console.log("You win!");
    } else if (this.board[3]=== "X" && this.board[4]=== "X" && this.board[5]=== "X"){
      console.log("You win!");
    } else if (this.board[6]=== "X" && this.board[7]=== "X" && this.board[8]=== "X"){
      console.log("You win!");
    } else if (this.board[2]=== "X" && this.board[4]=== "X" && this.board[6]=== "X"){
      console.log("You win!");
    } else if (this.board[0]=== "X" && this.board[4]=== "X" && this.board[8]=== "X"){
      console.log("You win!");
    }
  }


};






// Reflection
// I didn't want to refactor by using a for loop with the win function because I wanted to make it a single method for clarity, and there are not so many options to win in this game
/* 
DESIGN A GAME
In the reflection section of your game.js file, answer the following questions:
• What was the most difficult part of this challenge?
Thinking about what game I was going to create, at the end I just ran out of time and did not complete any of my ideas and ended up setting for tic tac toe. The objects creating it’s ok, but I still have problems printing things in a pretty way on the terminal. Ruby is so much smother for that!
• What did you learn about creating objects and functions that interact with one another?
I learned about the scope of the variables that are created and to use the this.variable to call variables inside other functions.
• Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I didn’t use so many built in methods mostly because I ran out of time, I’m traveling at trhe moment, last chance before bootcamp starts. I will most likely redo my work as I get back to NYC
• How can you access and manipulate properties of objects?
You can access them with the dot notation and with ()
 var newPerson = new person(required arguments)
 The "new person()" is the constructor function.
Also it depends on how objects are built. 


*/

