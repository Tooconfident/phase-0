// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kevin Perkins.

// Pseudocode
/*
Input: Integer
Output: Comma-separated string version of integer

1) define a function
2) create a variable that points the integer to a string
3) results variable
 
4) iterate through the string with a FOR loop (reversely)
  -IF there are 3 integers consecutively
    -add a sliced substring of the three integers with a comma
  -ELSE
    -add the remaining string
5) return the results
*/

// Initial Solution

function separateComma(int) {
  var intArray = int.toString().split('');
  var results = []; 
  
  var i = intArray.length - 1
  while (i >= 0) {
    if (intArray[i - 2]) {
      results.unshift("," + intArray[i-2] + intArray[i-1] + intArray[i])
      i -= 3
    }
    else {
      results.unshift(intArray[i])
      i -= 1
  }
  }
  return results.join('')
}

console.log(separateComma(1569743))



// Refactored Solution
 function separateComma(int) {
   return int.toLocaleString()
 }

console.log(separateComma(1569743))



// Your Own Tests (OPTIONAL)




/*  Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
The logic was the same, and we tried approaching it almost just like we did with ruby, but then we found an array process that worked better for JavaScript.

// What did you learn about iterating over arrays in JavaScript?
It seems a little more difficult because we didn't know many built-in methods.

// What was different about solving this problem in JavaScript?
Obviously the syntax. The string and array conversions seemed more complex and again the lack of built-ins make it difficult.

// What built-in methods did you find to incorporate in your refactored solution?
I can't believe we found #toLocaleString()! We found before our refactoring step, so needless to say our refactoring time to significantly less than out initial solution.
*/