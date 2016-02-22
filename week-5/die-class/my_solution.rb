# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: the number of sides the dice has
# Output: a random generated number from 1 to the max number equal to sides on the dice.
# Steps:
## create "Die" class
## define "intialize" method tha takes 'sides' as an argument
## create new die object thst has at least 1 side
### return an error if a number less than 1 is entered as the argument
## define a "sides" method and give it a variable equal to the sides on the die object
## define a "roll" method that randomly rolls the die with the set side parameters

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides >= 1
    	raise ArgumentError.new("Only positive integers for sides plz, kthx!")
    end
  end

  def sides
    @sides
  end

  def roll
    random_roll = Random.new
    random_roll.rand(1..@sides)
  end
end

die = Die.new(32)
p die.sides
p die.roll

# 3. Refactored Solution
class Die
	attr_accessor :sides

  def initialize(sides)
    @sides = sides
    	unless sides >= 1
    		raise ArgumentError.new("Only positive integers for sides plz, kthx!")
    	end
  	end

  def roll
    rand(1..sides)
  end
end

die = Die.new(32)
p die.sides
p die.roll



# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?
	It is a class that raises an error when the arguments are wrong for th given method.
	This can be due to the amount of arguments or if the wrong type of argument is supplied.
	You would use it to instruct the user towards what type of input your class or method is looking for.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	#rand was the first new method we were required to find. It was as expected, the perfect method to successfully randomize inputs within the given parameters.
	#attr_accessor was a great method used to allow me to access instance variables and methods without having to define them in a seperate instance within the class.
	This cut down on repetition for refactoring.

What is a Ruby class?
	A class is a blueprint that contains objects. Objects within the class are known as instances and there are methods or behaviors telling the objects what to do.

Why would you use a Ruby class?
	A class is useful when you want to use the same variable or methods (known as instance variables and instance methods) within multiple methods inside that class.

What is the difference between a local variable and an instance variable?
	A local variable lives within one method only and cannot be accessed outside the method. 
	An instance variable lives within the instance inside a class and can be accessed inside other instance methods. 

Where can an instance variable be used?
	It can be used across all instances or methods within the class.

=end
