// DOM Manipulation Challenge


// I worked on this challenge with Dan Shapiro.


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById("release-0").className+="done";


// Release 2:

document.getElementById("release-1").style.display="none";


// Release 3:

document.getElementsByTagName("h1")[0].innerHTML="I completed release-2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor="#955251";


// Release 5:

var release4 = document.getElementsByClassName('release-4');

 for (var i = 0; i < release4.length; i++) {
 	release4[i].style.fontSize='2em';
 };


// Release 6:

var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));

// Reflections:

// What did you learn about the DOM?

// I learned that the DOM is not just our original HTML code. It is more.
// The DOM is an API that will allow us to manipulate it in runtime with javascript and CSS.
// Some browser's DOM will make corrections to HTML code that may be lacking tags to allow proper JS manipulation.
// Using the DOM is very useful to see how JavaScript and CSS can change your style or interaction with a website before making permanent changes to the source code.

// What are some useful methods to use to manipulate the DOM?

// .getElementbyId was very useful in the challenge. This allowed us to target specific elements in our html that had id tags.
// .getElementByClassName will be just as useful if not more going forward because I feel there are much more class tags or id tags going forward. 
// You can target specific class tags or make changes to the entire class in the code using FOR loops.
// This is really cool because it shows we are able to style our page with .style method with JavaScript in runtime after CSS style has already been added.