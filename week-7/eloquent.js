// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var firstName = "Ryan";
console.log(firstName + " Wilkins");

// Short favorite food program
prompt("What is your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var hash = "#";
while(hash.length <= 7) {
	console.log(hash);
	hash += "#";
}


// Functions



// Complete the `minimum` exercise.
function min(x, y) {
  if (x <= y)
    return x;
  else
    return y;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = { 
  name: "Ryan Wilkins",
  age: 31,
  foods: ["sushi", "tacos", "pizza"],
  quirk: "love to play video games",
};

console.log("My name is " + me.name + " and I am " + me.age + " years old. My favorite food is " + me.foods[0] + ".");
console.log("I also love to eat " + me.foods[1] + " and " + me.foods[2] + ". One quirk about me is I " + me.quirk + ".");
console.log(me.foods.join (" "));