# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #creat an array of BINGO letters
  # randomly generate 1 of 5 letters
  # randomly generate a number between 1 and 100
  # print out letter and number combo

# Check the called column for the number called.
  # check each column corresponding to the letter for number called
  # creat a loop that iterates through each sub array for number

# If the number is in the column, replace with an 'x'
  #if one of the arrays contains the number called

# Display a column to the console
  #convert array to a column?

# Display the board to the console (prettily)
  #with changes is found

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def call
    @call_letter = @letters.sample
    @call_num = rand(1..100)
    @combo = @call_letter + @call_num.to_s
    @combo
  end

  def check
    @column = @letters.index(@call_letter)
    @bingo_board.map do |array|
      array.map!.with_index do |num, index|
        if num == @call_num && index == @column
           'X' 
        else  num
        end
      end
    end
  end

  def display
    puts "--B---I---N---G---O--"
    @bingo_board.each_slice(1) { |array| p array }
  end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def call
    @call_letter = @letters.sample
    @call_num = rand(1..100)
    @call_letter + @call_num.to_s
    end

  def check
    @column = @letters.index(@call_letter)
    @bingo_board.map do |array|
      array.map!.with_index do |num, index|
        num == @call_num && index == @column ? 'X' : num
      end
    end
  end

  def display
    puts "-B---I---N---G---O-"
    @bingo_board.each { |array| p array }
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
puts new_game.call
new_game.check
new_game.display
puts


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
## This was one of the hardest challenges we have had so far. My pseudocode style makes sense and I believe I translated it well to code.
## The only thing I am still confused on is printing a column to the console.

# What are the benefits of using a class for this challenge?
## All the instance methods will work together to creat a working and (somewhat) pretty Bingo board.

# How can you access coordinates in a nested array?
## By calling the array name followed by multiple index keys.

# What methods did you use to access and modify the array?
## .each, .map, and .with_index. I used .slice! in my initial solution, but that proved not as readable or logical as just the simple .each method.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
## _with_index for both .each and .map was very useful in allowing me to access the index number and value of each element in an array. 

# How did you determine what should be an instance variable versus a local variable?
## I stuck to instance variables as much as possible because I knew I wanted each instance to communicate with each other without calling another method inside.

# What do you feel is most improved in your refactored solution?
## Readability and DRYness. I had a @combo instance variable in my first initialize method because I thought I would need to call on it in the future.
## Turned out that wasn't necessary.