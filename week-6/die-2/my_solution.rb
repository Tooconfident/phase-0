# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: If an empty array is passed it will return an error, 
# 		  otherwise we will return a randomly generated side of the dice as a string
# Steps:
## create "Die" class
## define "intialize" method that takes 'labels' as an argument
## create new die object that has at least 1 side
### return an error if a an empty array is entered as the argument
## define a "sides" method and give it a variable equal to the sides on the die object
## define a "roll" method that randomly rolls the die with the set side parameters

# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.size == 0
  		raise ArgumentError.new("Please enter string with actual values!")
  	end
  end

  def sides
  	@labels.size
  end

  def roll
  	@labels[rand(sides)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides # still returns the number of sides, in this case 6
p die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly



# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.empty?
  		raise ArgumentError
  	end
  end
  
  def sides
  	@labels.size
  end

  def roll
  	@labels.sample
  end
end

die = Die.new(["And", "Now", "For", "Something", "Completely", "Different"])
p die.sides 
p die.roll 




# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# 	Logic-wise no, there was really not change in logic. The differences came from dealing with a string instead of integers which actually led to using more built-in array methods liks #size.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# 	When looking back on our previous challenge with integers, it just took a couple modifications and added built in methods to make the code work the same while dealing with different arguments.
#   Refactoring to a DRY simple code allows those changes to be made much easier.

# What new methods did you learn when working on this challenge, if any?
# 	#sample is awesome! I was so excited when I found it because it was a perfect way to simplify #rand within an array.

# What concepts about classes were you able to solidify in this challenge?
# 	How instance variables and methods communicated accross a class.