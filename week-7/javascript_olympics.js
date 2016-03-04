 // JavaScript Olympics

// I paired with: Sami Zhang on this challenge.

// This challenge took us 0.75 hours.


// Warm Up




// Bulk Up
var athletes = [
  {name: "Ryan Wilkins",
  event: "Ultimate Frisbee"},
  {name: "Sami Zhang",
  event: "Volleyball"}
]

function win (athletes){
  for (var i in athletes) {
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event + "!";
    console.log(athletes[i].win)
  }
}

win(athletes)



// Jumble your words
function reverse (string) {
  var array = string.split("").reverse().join("");
  return array;
}

console.log(reverse("String"))



// 2,4,6,8
function even(numbers) {
  return numbers % 2 === 0;
}

var filter = [1, 2, 3, 4, 5, 6, 7, 8].filter(even);
console.log(filter)



// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)




// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// The basics of object-oriented JavaScript, including array and string methods, and the constructor function.
// Also I feel I needed more practice with FOR loops in regards to JavaScript and I got that in this challenge.

// What are constructor functions?
// They are very similar to a class in Ruby where after defining the function, we use "this." infront of a JavaScript object(variable) creates an instance of that object that can be called on later in the function.

// How are constructors different from Ruby classes (in your research)?
// Constructor variables stay within their scope unlike instance variables in Ruby.
// Constructors seems to not have inheritence automatically like Ruby Classes do. 