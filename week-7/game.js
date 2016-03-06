 // Design Basic Game Solo Challenge

// This is a solo challenge

// "Lab Rats!!"
// Your mission description: 
// Overall mission: The lab rats have escaped and you must trap the rats to advance to the next level. 
//					The following example is the first level and the intent is for future levels to have more rats,
//					and a limit to how many traps you can use per level.
// Goals: Get the rat to walk onto one of your traps
// Characters: You, Lab Rat
// Objects: Traps(placement freedom), Rat(position, movement)
// Functions: Rat(moveUp, moveDown, moveLeft, MoveRight)
// 			  Traps(placePosition), # limit to traps?

// Pseudocode
// Input: trap location
// Output: IF location of trap and rat are not equal
//			RETURN both objects' locations
//		   IF locations are equal
//			RETURN success statement
// Create a 'rat' object that will have properties of a random starting position
// 	Create function that will randomly make the rat move one space up, down, left, or right
// Create a 'trap' object that has properties of an empty starting position, and multiple uses
//  Create a function that will place the trap at some position
// 		This location cannot be the exact location of the rat's current position
// Place a trap somewhere then allow the rat to move randomly one space
//  If rat moves and lands on the same space as a trap, then it is CAUGHT.



// Initial Code
var rat = {
posX: Math.floor((Math.random()*10)+1),
posY: Math.floor((Math.random()*10)+1),
};
console.log("The rat's current location is " + rat.posX + "," + rat.posY);

var trap = {
  posX : 0,
  posY : 0,
  caught : false
};

function placeTrap(x, y) {
  trap.posX = x,
  trap.posY = y,
    console.log("You placed your trap at " + trap.posX + "," + trap.posY);

if(trap.posX === rat.posX && trap.posY === rat.posY) {
    trap.caught = true;
    console.log("You caught the rat, good job!");
  };
};
placeTrap(9, 1);
placeTrap(5, 5);
placeTrap(4, 3); 


// Refactored Code





// Reflection

// I am currently not satisfied with this solution because as it stands right now it is too much like the example given to us.
 // I want to incorporate more abilities in the game such as having the rat move one space after the trap has been placed.
 // I also want to add a limited number of traps per level.
 // I believe my trap object should have some properties such as a limited count or use so when you use up all your traps you lose.
 // This is important for my final concept because currently there is no way to lose the game.
 // Although I believe I have a basic understanding of how to get objects to interact with each other with JavaScript, I am struggling getting my functions to work in order.
 // I also believe my function and variable understandings with JavaScript are not as solid as they are with Ruby.
 // This teaches me I need to practice more and review my reading resources.
 // The good news is I found passable code that shows the two required objects interacting when my function is invoked. It is in MVP format, which I can build on when I learn more.
 // I keep going back to "For your own sanity, start small. You can always add more later, but it's better not to go too overboard early!"
 // 	But I am worried I am submitting something that is not very creative outside of the example game.

// What was the most difficult part of this challenge?
// I struggled heavily with trying to get my rat to perform a second operation after assigning a trap's coordinates.
// I keep going back to the example and I see a the function creating multiple actions so I am trying to add something similar.
// As my solution stands right now, there is only a relationship of the trap and rat locations without any other activity and that is dissapointing because I don't want this too look just like the example we were given but in a simpler form.
// I will continue to work on this issue I am having as long as I can, but if there is not an update from this submitted version, it is because I couldn't solve the problem.
//

// What did you learn about creating objects and functions that interact with one another?
// The functions allow me to change my variable object properties. By using IF statements I am also able to create a relationship between my objects.
// Getting them to interact is the exact way I want is a bit of a struggle but I believe that is because of my basic JavaScript knowledge.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// Math.random helped create a random generated number for my coordinates and using Math.floor makes these number values round down to the nearest integer.
// These methods are used pretty much the same in the example but my understanding of how to use them was solidified in the DevBootcamp introduction to JavaScript opening Numbers section.

// How can you access and manipulate properties of objects?
// Once the properties are defined you can use dot notation such as rat.posX. 
// There is bracket notation as well but dot notation made the most sense for this solution because the properties were clearly defined before the function was created.