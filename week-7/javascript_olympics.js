



// Warm Up




// Bulk Up


var athletes =  [
  {name:"Sarah Hughes",
  event: "Ladies's Single"},
  {name: "athlete2",
  event: "Juggling"}
]


// Pseudocode win function
// Input: athletes array
// Output: changed property athlete.win
// Steps: Loop through the athletes array.
// On each item, add a string "win" that combines the name and the event properties.
function forEach(array, action) {
  for (var i =0; i< array.length; i++)
    action(array[i]);
}
forEach(athletes, function (athletes) {
        athletes.win = athletes.name + " won the " + athletes.event + "."

});

// athlete.win = name + " won the "



// Jumble your words
// reverseString

// Input: string as an argument
// Output: reverse of string
// Steps:
// Create an array that is the string
// Reverse the array
// Turn the array back into a string

function reverseString(string) {
 return  string.split('').reverse().join('')
}

console.log(reverseString("cat"))

// 2,4,6,8
// evenNumbers

// Input: array of numbers
// Output: array of only even numbers
// Steps:
// create empty array, evenArray
// loop through array
//   if number is divisible by 2 with no remainder
//     add it to evenArray
//   else
//     nothing
//   endIf
// return evenArray

function evenNumbers(arrayNumbers) {
  var evenArray = [];
  for (var i = 0; i < arrayNumbers.length; i++) {
    if (arrayNumbers[i] % 2 == 0) {
      evenArray.push(arrayNumbers[i]);
    }
  }
  return evenArray;
}



// "We built this city"
// function myObject(){
//     this.iAm = 'an object';
//     this.whatAmI = function(){
//         alert('I am ' + this.iAm);
//     };
// };

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

//Reflect
// What JavaScript knowledge did you solidify in this challenge?
// functions for arrays (such as they are. I misunderstood a reading from earlier, which is why I had to construct the forEach function). setting properties of objects.

// What are constructor functions?
// Constructor function are like class initializers. It creates instances of an object, and once changes are made to that instance, they only affect that instances, not the entire object. Note that class is capitlized.
// How are constructors different from Ruby classes (in your research)?
// Honestly, the key question is how are they similar to Ruby classes- realizing that is was when the pin dropped for me. But there are key differences as well- there's no @variable in Javascript. Instead it's this.variable . Also, Javascript is a class-less language. Everything including the constructor is an object.