/*
Gradebook from Names and Scores

I worked on this challenge with Oscar Delgadillo.
This challenge took us 1 hour.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.
var gradebook = {}

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]]["testScores"] = scores[i];
};

gradebook["addScore"] = function (name, score) { // Push value of score into the testScore property inside name property as student
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
}

function average(array) {
  var avg = 0;
  for (var i = 0; i < array.length; i++) {
    avg += array[i];
  }
   avg = avg / array.length;
   return avg;
}


// __________________________________________
// Refactored Solution
var gradebook = {}

for (var index in students) {
  gradebook[students[index]] = {};
}

for (var index in students) {
  gradebook[students[index]]["testScores"] = scores[index];
}

gradebook["addScore"] = function (name, score) { 
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
}

function average(array) {
 var avg = array.reduce( (prev, curr) => prev + curr )/array.length;
  return avg;
}
// function average(array) {
//  var avg = array.reduce(function(prevValue, currentValue, currentIndex, array) {
//    return prevValue + currentValue;
//  }, 0)/array.length;
//   return avg;
// }




// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
  // I had issues with adding functions as properties to objects for the solo game challenge last week.
  // This assignment really solidified the concept by creating the property first and then making them equal to a function.
  // By making the function a property, you can modify the object internally but since JavaScript doesn't like to do this 
  // destructively, I learned you have to create a new variable to return the modification at the end of the function.
  // For instance we creat the variable object 'avg' to be returned instead of the default argument 'average'.

// How did you iterate over nested arrays in JavaScript?
  // By using FOR loops and bracket notation. We used the standard FOR loops syntax for index interation in our initial solutiion.
  // Then when we refactored we used IN index iteration, similar to how we would using Array#each iteration with Ruby.
  // Using 'index' instead of 'i' just makes the whole code more readable and descriptive.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  // We used .push, which simply accomplished the challenge of adding the new score to the end of the array value of our testScore property.
  // During refactoring we found .reduce. reduce() allowed us to iterate through each value of an array and reduce it to a single value.
  // Since no initialValue is given, or in this case our in initialValue is 0, previousValue is equal to initialValue.
  // currentValue is the value of avg, after the iteration done by reduce(), so we combine them together and return the final value of avg
  // which is the reduce() method, divided by the length of the array.







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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)