/*As a user I want:
To be able to add together, a series of numbers.
  To have that series be any length and should be added together regarless of the series containing an odd or even amount of numbers
To be able to do a mean of a series of numbers.
  Again I want that series to be any length and odd or even amount of numbers in series
To be able to determine the median of a series of numbers.
  This should be easier for an odd numbered series.
  Since no median exists for an even numbered one, I want it to give me the mean of the two middle numbers.

  'sum'
  Input: an array of numbers
  Output: the sum of all the numbers in the input array
  Steps: take a group of numbers as an argument
  		 create a result variable equal to 0
  		 add each number in the group together then make that equal to the variable
  		 return variable

  'mean'
  Input: an array of numbers
  Output: the mean of all the input numbers as one single number
  Steps: take a group of numbers as an argument
  		 create a result variable
  		 create a length or count variable that counts how many numbers are in the group
  		 create a sum variable equal to 0
  		 add each number in the group together then make that equal to the sum variable
		 divide the sum variable by the count variable and make this equal to the result variable
		 return result variable

  'median'
  Input: an array of numbers
  Output: the median of all the input numbers
  Steps: take a group of numbers as an argument
  		 create a result variable
  		 create a count variable to count how many numbers are in the group
  		 IF the count variable is ODD
  		 	order the array of numbers from smallest value to largest
  		 	find the middle number and make it equal to the result variable
  		 IF the count variable is EVEN
  		 	order the array of numbers from smallest value to largest
  		 	find the TWO middle numbers
  		 	add the the two middle numbers, divide them by and make this equal to the result variable
  		 	return result variable	
