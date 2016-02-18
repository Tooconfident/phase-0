# Pad an Array

# I worked on this challenge with David Kaiser.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#Get input (initial array, minimum (non-negative integer), default = nil)
#define the method
#compare length of array in arg to minimum
#if minimum = 0, just return original array
#determine if padding is neccesary
#if NO, return original array 
#if YES, determine how much padding is necessary
#add padding to end of array until minimum is met
#return new array 



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
  	array.push(value)
  end
	p array
end

# def pad(array, min_size, value = nil) #non-destructive
# 	new_array = Array.new(array)  		#changed from (new_array = array) 
# 	while new_array.length < min_size
#  		new_array.push(value)
# 	end
# 	p new_array
# end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
	new_array = Array.new(array)
	if min_size < array.length
   		return new_array
 	else 
 		new_array.concat((1..min_size-array.length).collect { value })
 	end
 	p new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# => Overall I believe we were. Although now that I look back at our pseudocode we forgot to add the step of making sure the padding is filled with the value arguement.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Yes we were able to translate it rather smoothly. It was difficult keeping the pseudocode without ruby syntax inside it, so some editing was required.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => Our destructive worked quite well and didn't really need rafactoring, but we initially did have issues with the non-destructive option. We used new_array = array, and after discovering what errors we were getting back we discovered new_array = Array.new(array) worked for our best interest. 

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We found enumerable methods (.concat and .collect) to refactor another solution, but I believe our original solution refactored with "Array.new(array)" and using .push, was a cleaner looking code.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# => The variable names make sense to us, so I believe we accomplished an easily readable solution.

# What is the difference between destructive and non-destructive methods in your own words?
# =>  Destructive methods permanently change the object on which they are called using n exclamation point (!), or a Bang. Non-destructive methods may change an object throughout the code, but will not permanently change the object when called upon later.