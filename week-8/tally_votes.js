// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Katherine Broner
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
// 1. Count the number of votes each person received for president.
// 	  -	Itereate over nested votes object as deep as necessarry to acces desired values.
//    - create a new variable that is assigned to each voter.  
//    - use this variable to loop through votes and access properties one at a time
//	  - use a second for loop to access data from each voter's selection for each office position
// 	  - assign the number 1 to vote received and continue to increment by 1 for every vote that is found with the same name
// 2. Elect a winner for person with most votes for each office position
//    - create variable to be the highest vote for each position
//    - loops through vote count from previous objects to find the highest number of votes for each position
//	  - when highest votes for each position is found, assign name of officer with those number of votes to each position

// __________________________________________
// Initial Solution
// for (var voter in votes) { 
//   for (var positions in voteCount) {
//    if (voteCount[positions].hasOwnProperty(votes[voter][positions])) {
//      voteCount[positions][votes[voter][positions]]++;
//    }
//    else {
//       voteCount[positions][votes[voter][positions]] = 1;
//    }  
//   }
// };

// // console.log(voteCount);

// for (var positions in voteCount) {
//   var highestValue = 0;
//   var candidates = voteCount[positions];
//   for (var person in candidates) {
//     if (candidates[person] > highestValue) {
//       highestValue = candidates[person];
//       officers[positions] = person;
//       } 
//   }
    
// }
//   console.log(officers);


// __________________________________________
// Refactored Solution

for (var voter in votes) { 
  for (var positions in voteCount) {
   if (voteCount[positions][votes[voter][positions]]) {
     voteCount[positions][votes[voter][positions]]++;
   }
   else {
      voteCount[positions][votes[voter][positions]] = 1;
   }  
  }
};

/* I'm not sure if I like this below option better than above for readability.

// for (var voter in votes) { 
//   for (var positions in votes[voter]) {
//    voteCount[positions][votes[voter][positions]] = (voteCount[positions][votes[voter][positions]] || 0) + 1
//   };
// };

*/

for (var positions in voteCount) {
  var highestValue = 0;
  var candidates = voteCount[positions];
  for (var person in candidates) {
    if (candidates[person] > highestValue) {
      highestValue = candidates[person];
      officers[positions] = person;
      }; 
  };
    
};
  console.log(officers);




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
	// Using multiple FOR loops was necessary to grab the values we were looking for. 
	// The first loop will only access the name property key before diving deeper into the next nested property "hash".
	// We used console.log() quite a bit during our coding process to really figure out what each layer was returning so we could better understand where we wanted to take the loop to next.

// Were you able to find useful methods to help you with this?
	// Not really. .hasOwnProperty was used in our initial solution to make sure positions were properties of voteCount, but when removed and raplaced with brackets, it was automatically defined in our loop.
	// Methods didn't seem to be needed once the logic was addressed using loops and comparison operators.

// What concepts were solidified in the process of working through this challenge?
	// The inception of loops! the `for..in` loop seems to accomplish the same operation as if you used the default FOR loops syntax 
	// (for (i = 0; i < OBJECT.length; i++)) seems to equal (for i in OBJECT).
	// Also having descriptive names for objects is important especially when iterating through many layers of properties. 


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