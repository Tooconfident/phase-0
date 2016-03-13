# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 1. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
 # define a method "assert" that raises an error unless the block of code is true
	# define a variable equal to  'bettysue'
	# call the assert method on the block (in this case what the variable is equal to)
	# the assert method returns nil when the block contains 'bettysue', because the yield statement is true 
	# the assert method raises the error 'Assertion failed!' when the block contains 'billybob' being equal to the variable 'name'
	# the error is raised because the method cannot yield the block of code, due to returning false

# 3. Copy your selected challenge here

class GuessingGame
  attr_accessor :choice


  def initialize(answer)
  	@answer = answer
  end


  def guess(input)
  	@choice = input
	if input > @answer
		:high 
	elsif input == @answer 
		:correct 
	else
		:low
	end
  end 

  def solved?
	@choice == @answer
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements
 def assert
 	raise "Assertion failed!" unless yield
 end

game = GuessingGame.new(100)
assert { game.guess(100) }
assert { game.solved? == true }
assert { game.guess(148) }
assert { game.solved? == false }

#  -- ORIGINAL DRIVER CODE --
# game = GuessingGame.new(100)
# p game.guess(98)
# p game.solved?


# 5. Reflection

# What concepts did you review or learn in this challenge?
## Blocks of code, yield statements, defining ruby methods, test driven development and using Driver Test Code.

# What is still confusing to you about Ruby?
## How to re-write RSpec files into assertion statements. 
## Changing the driver code makes sense, but converting and entire RSpec files had me at a loss.

# What are you going to study to get more prepared for Phase 1?
## Assertion statements, RSpec files as well as attr_ methods. 
## I want to work on attr_ methods a bit more because I know there is more I can do with it in my guessing game above.
## From the lecture video, Shadi says we will constantly testing and creating assertions in the real world.