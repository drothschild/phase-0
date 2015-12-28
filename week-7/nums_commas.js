// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Roche Janken.

// Pseudocode
// Define a function that takes an integer
// Seperate the integer by digit and add to an array
// Reverse the array and add commas into every third slot
// Re reverse the array, join and return



// Initial Solution
// var separateComma = function (integer) {
//   var arr = integer.toString().split('');
//   arr = arr.reverse();
//   for (var i =1; i < arr.length; i++) {
//     if (i % 3 == 0)
//       arr[i] = arr[i].toString() + ",";

//   }
//   // console.log( arr.reverse().join());
//   return arr.reverse().join("");
// }




// Refactored Solution

var separateComma = function (integer) {
  var arr = integer.toString().split('');
  arr.reverse();
  for (var i =1; i < arr.length; i++) {
    if (i % 3 == 0)
      arr[i] = arr[i].toString() + ',';

  }
  return arr.reverse().join('');
}




// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
};
assert(
  (typeof separateComma(4000) == 'string'),
  "Must be string!",
  "1. "
)

assert(
  (separateComma(4000) == '4,000'),
  "4000 must return '4,000'. One comma!",
  "2. "
)

assert(
  (separateComma(4) == '4'),
  "4 must return '4' No commas!",
  "3. "
)

assert(
  (separateComma(4000000) == '4,000,000'),
  "4000000 must return '4,000,000' Two commas!",
  "4. "
)


// Reflection
// * What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// In my initial solution, I approached it by turning it into a string and then going backwards. But my partner reccomended we work with arrays, and actually it turned out to be better.

// * What did you learn about iterating over arrays in JavaScript?
// I learned reverse is a destructive method (not quite iterating, but still relevant.) Also, you have to use the For loops.


// * What was different about solving this problem in JavaScript?
// The lack of a built in method for reversing strings. In addition, we had to make sure all functions had parentheses.
// * What built-in methods did you find to incorporate in your refactored solution?
//  It wasn't in refactoring, but toString().
