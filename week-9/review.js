// Shopping List is at:
// https://github.com/drothschild/phase-0/blob/master/week-9/shopping_list.js

// Bingo Challenge 1
// In javascript this time.
// PSEUDOCODE
// CREATE BINGO BOARD
//  Input: Array within Array
//  Output: bingoBoard Output
//  Create Object bingo Board Constructor
//  Set board to Input
// set solved to false (for future, not needed at present)
//
// PICK RANDOM LETTER AND NUMBER
//  Input: nothing
//  Output: array with number and letter
//  letter = Pick a random character in the string "bingo"
//  num = pick a random number from 1-100
//  return array with letter and number

//
// CHECK LETTER AND NUMBER ([letter, num])
// input: array of  letter and letter
// output: True/false, and if true, replace number on the array with "x"
// set variable column based on letter input
// LOOP through rows of board
//  IF column of row equals num
//    change column of row to x.
//    return true
//  ELSE
//   return false
//  END IF
// END LOOP

// Print Board (letter)
// Print "B    I    N    G    O"
//
// LOOP Through rows of board
//  LOOP through each row
//    Set variable print_row to print_row + column contents, plus 5 spaces minus length of column contents
//  END LOOP
//  print print_row
// END LOOP

function BingoBoard(board){
  this.board = board;
  this.solved = false;



}

// BingoBoard.prototype.check  = function(arr) {
//   column = "BINGO".indexOf(arr[0]);

//   number  = arr[1];
//   for (var row in this.board) {
//     console.log (this.board[row][column]);
//         if (this.board[row][column] == number) {
//       this.board[row][column] = "x";
//       console.log("Hey");
//       return true;
//     }
//   }
//   return false;
// }

// BingoBoard.prototype.printColumn = function (letter) {
//     column = "BINGO".indexOf(letter);
//     for (var row in this.board) {
//       console.log (this.board[row][column]);

//     }
// }


// BingoBoard.prototype.printBoard = function () {
//   console.log ("B    I    N    G    O")
//     for (var row in this.board) {
//       var formattedRow = "";
//       for (var column in this.board[row]) {

//         var padLength = 5 - this.board[row][column].toString().length;
//         formattedRow += this.board[row][column] + "     ".slice(0, padLength);
//       }
//       console.log (formattedRow);

//     }
// }


// var call = function () {
//     number = Math.floor((Math.random() * 100) + 1);
//     letter ="BINGO".charAt( Math.floor((Math.random() * 4)));
//     return [letter, number];
// }

// Refactor
function BingoBoard(board){
  this.board = board;
  // For future implementation
  this.solved = false;
}

BingoBoard.prototype.check = function check (arr) {
    column = "BINGO".indexOf(arr[0]);
    number  = arr[1];
    for (var row in this.board) {
        if (this.board[row][column] == number) {
          this.board[row][column] = "x";
          // console.log(arr);
          return true;
        }
    }
    return false;
}


BingoBoard.prototype.printColumn = function (letter) {
    column = "BINGO".indexOf(letter);
    for (var row in this.board) {
      console.log (this.board[row][column]);
    }
}


BingoBoard.prototype.printBoard = function () {
  console.log ("B    I    N    G    O")
    for (var row in this.board) {
      var formattedRow = "";
      for (var column in this.board[row]) {
        var padLength = 5 - this.board[row][column].toString().length;
        formattedRow += this.board[row][column] + "     ".slice(0, padLength);
      }
      console.log (formattedRow);
    }
}


var call = function () {
    number = Math.floor((Math.random() * 100) + 1);
    letter ="BINGO".charAt( Math.floor((Math.random() * 5)));
    return [letter, number];
}



// Driver Code

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]];
var new_game = new BingoBoard(board);
new_game.printBoard();
 for (var i = 1; i < 50; i++) {
  new_game.check(call());
};
new_game.printBoard();
new_game.printColumn ("O");


// What concepts did you solidify in working on this challenge?
// Prototyping and constructor functions

// What was the most difficult part of this challenge?
// Figuring out how to add functions to prototype. I'm still not convinced I've got the best way, organizationally speaking.

// Did you solve the problem in a new way this time?
// Not really, once you take out the JavaScript

// Was your pseudocode different from the Ruby version? What was the same and what was different?
//  I had the same "input" and "output" functions working. But I also had a bit more detail in the functions than before.