# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: symbols :high :low or :correct depending on the answer input
# Steps: 
# Require an integer as input during intialize stage, or else return an error
# define guess method that takes an integer "guess"
# return :high if #guess is larger than #number, :correct if #guess and #number are equal,
# and :low if #guess is less than #number.
# define method "solved?" which returns true or false if most recent guess is correct or not respectively.


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end


  def guess(guess)
	@guess = guess
	if guess > @answer
		return :high
	elsif guess == @answer
		return :correct
	else 
		return :low
	end
  end 

  def solved?
	if @guess == @answer
	return true
	else false
	end
  end
end

game = GuessingGame.new(10)
p game.guess(25)
p game.solved?




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
  end


  def guess(guess)
	@guess = guess.to_i
	guess > @answer ? :high : guess == @answer ? :correct : :low
  end 

  def solved?
	@guess == @answer
  end
end

game = GuessingGame.new(100)
p game.guess(100)
p game.solved?




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
## Instances tie them together so they can refer to each other after previously being defined.

# When should you use instance variables? What do they do for you?
## You use instance variables when you want to call on them in multiple instances in a class. They allow you to simplify your code.
## They allow your instance methods to communicate with each other.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
## Flow control is important when you want to method to have the flexibility of returning multiple values.
## In this case I used the if and else conditional to allow our game to return either :high, :low, or :correct. 

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
## They are unique objects within ruby and cannot be altered.
## Using them in this code is good because our return values will e limited to 3 unique objects.
## This saves memory for a code that has the ability to take numerous different integers as arguments.