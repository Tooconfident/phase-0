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
    puts "--B---I---N---G---O--"
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
p new_game.call
new_game.check
p new_game.display

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


#Reflection

