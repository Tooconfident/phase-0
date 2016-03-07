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
caught: false
};
console.log("The rat's current location is " + rat.posX + "," + rat.posY);

var trap = {
  posX : 0,
  posY : 0,
  limit: 4, // this is supposed to be the limit to the amount of times we can use traps per leve, it's value would change each level,I didn't have a good idea on how to implement this
};

function placeTrap(x, y) {
  trap.posX = x,
  trap.posY = y,
    console.log("You placed your trap at " + trap.posX + "," + trap.posY);

if(trap.posX === rat.posX && trap.posY === rat.posY) {
    rat.caught = true;
    console.log("You caught the rat, good job!");
  };
};

// When trap is place, rat moves 1 space in either direction accross either x or y
function moveRat() {
  if(trap.posY < rat.posY) {
    var ratMoveUp = rat.posY += 1;
    console.log("The rat moved to " + rat.posX + "," + ratMoveUp);
  }
  else if(trap.posY > rat.posY) {
    var ratMoveDown = rat.posY -= 1;
    console.log("The rat moved to " + rat.posX + "," + ratMoveDown); // The idea is there, and the rat is moving, but I know there is a better way
  }
  else if(trap.posX < rat.posX) {
    var ratMoveRight = rat.posX += 1;
    console.log("The rat moved to " + ratMoveRight + "," + rat.posY);
  }
  else if(trap.posX > rat.posX) {
    var ratMoveLeft = rat.posX -= 1;
    console.log("The rat moved to " + ratMoveLeft + "," + rat.posY);
  };
};

// Refactored Code
// I can't seem to find any built-ins that could make this better. Scanning the MDN Docs is a lot more confusing that ruby docs is.
// With what I found working, I eliminated properties for trap because they weren't benefitting my current code. I would want these properties back once I better understand how to implement them.
var rat = {
posX: Math.floor((Math.random()*5)+1),
posY: Math.floor((Math.random()*5)+1)
};
console.log("The rat's current location is " + rat.posX + "," + rat.posY);

var trap = {};

function placeTrap(x, y) {
  trap.posX = x,
  trap.posY = y,
    console.log("You placed your trap at " + trap.posX + "," + trap.posY);

if(trap.posX === rat.posX && trap.posY === rat.posY) {
    console.log("You caught the rat, good job!");
  };
};

function moveRat() {
  if(trap.posY < rat.posY) {
    var ratMoveUp = rat.posY++ ;
    console.log("The rat moved to " + rat.posX + "," + ratMoveUp);
  }
  else if(trap.posY > rat.posY) {
    var ratMoveDown = rat.posY-- ;
    console.log("The rat moved to " + rat.posX + "," + ratMoveDown); 
  }
  else if(trap.posX < rat.posX) {
    var ratMoveRight = rat.posX++ ;
    console.log("The rat moved to " + ratMoveRight + "," + rat.posY);
  }
  else if(trap.posX > rat.posX) {
    var ratMoveLeft = rat.posX-- ;
    console.log("The rat moved to " + ratMoveLeft + "," + rat.posY);
  }
  else if(trap.posX === rat.posX && trap.posY === rat.posY) {
    rat.caught = true;
    console.log(console.log("The rat can't move, you already caught it!");
  };
};


rat
placeTrap(4, 3);
moveRat();
placeTrap(5, 1);
moveRat();
placeTrap(2, 4);



// Reflection

// I am currently not satisfied with this solution because as it stands right now the traps are not staying on the "board".
// I'm not sure if this means I need to create a 'board' object as well and define it's properties, this does make sense though.
 // I also want to add a limited number of traps per level.
 // I believe my trap object should have some properties such as a limited count or use so when you use up all your traps you lose.
 // This is important for my final concept because currently there is no way to lose the game.
 // Although I believe I have a basic understanding of how to get objects to interact with each other with JavaScript, I am struggling getting my functions to work in order.
 // I also believe my function and variable understandings with JavaScript are not as solid as they are with Ruby.
 // This teaches me I need to practice more and review my reading resources.
 // The good news is I found passable code that shows the two required objects interacting when my functions are invoked. It is in MVP format, which I can build on when I learn more.
 // I keep going back to "For your own sanity, start small. You can always add more later, but it's better not to go too overboard early!"
 // 	But I am worried I am submitting something that is not very creative outside of the example game.

// What was the most difficult part of this challenge?
// I struggled heavily with trying to get my rat to perform a second operation after assigning a trap's coordinates.
// I keep going back to the example and I see a the function creating multiple actions so I am trying to add something similar.
// I was able to finally develope a second function that moves the rat depending on the trap location, but I also notice that it seems like the trap locations are not being saved.
// This means I probably need to create another variable or multiple trap objects with properties so they don't dissapear when another is called (like trap1, trap2, trap3 etc.), but I'm not 100% sure

// **EDIT** After looping through driver code for a bit, there actually was evidence of the traps being saved...
	
// 	// The rat's current location is 4,3 
	// You placed your trap at 4,3 
	// You caught the rat, good job! 
	// The rat can't move, you already caught it! 
	// You placed your trap at 5,1 
	// The rat moved to 4,3 
	// You placed your trap at 2,4 

// The rat moved to (5,3), which happened to be in my driver code so the ability for the rat to move was taken away, so that is progress.

// What did you learn about creating objects and functions that interact with one another?
// The functions allow me to change my variable object properties. By using IF and ELSE IF statements I am also able to create a relationship between my objects.
// Getting them to interact is the exact way I want is a bit of a struggle but I believe that is because of my basic JavaScript knowledge.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// Math.random helped create a random generated number for my coordinates and using Math.floor makes these number values round down to the nearest integer.
// These methods are used pretty much the same in the example but my understanding of how to use them was solidified in the DevBootcamp introduction to JavaScript opening Numbers section.

// How can you access and manipulate properties of objects?
// Once the properties are defined you can use dot notation such as rat.posX. 
// There is bracket notation as well but dot notation made the most sense for this solution because the properties were clearly defined without any special characters before the function was created.