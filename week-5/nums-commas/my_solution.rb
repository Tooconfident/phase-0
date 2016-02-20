# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# # A positive integer

# What is the output? (i.e. What should the code return?)
# # A string that is the same positive integer separated by commas.

# What are the steps needed to solve the problem?
# # Define the method with one argument.
# # take the integer argument and convert it into a string
# # count each character within the new string and determine its length
# # # count will be best accomplished using an array
# # if there are more than 3 digits, add a comma
# # continue adding commas for every 3 digits by resetting the count after the first comma has been set
# # if the input is 3 digits or less, return the original integer as a string with no change
# # make sure ruby counts from right to left

# 1. Initial Solution
def separate_comma(num)
	num_string = num.to_s
  if num_string.length <= 3
    return num_string
  else
    num_array = []
    count = 0 #default position for count to start
    num_string.reverse.each_char do |comm| #reverse gets ruby ot read numbers from right to left!
      if count == 3
        num_array.push(',')
        count = 0 #reset count to repeat process for more commas
      end
      num_array.push(comm) #comma gets pushed on to number once above block is true
      count = count + 1 #increase count to start the process all over again
    end
    return num_array.join.reverse
  end

end


# 2. Refactored Solution

def separate_comma(num)
	if num.to_s.size <= 3
    return num.to_s
  else
    num_arr = []
    count = 0
    num.to_s.reverse.each_char do |comm| 
      if count == 3
        num_arr << ','
        count = 0
      end
      num_arr << comm
      count += 1
    end
    num_arr.join.reverse
  end

end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# # At first I needed to start simple so I knew after I defined my method and figured out what was 
# # the input and output I wanted to start with a simple return. We logically know that commas appear
# # in front of the first three integers of a number so if my input is only 3 or less integers, we just needed
# # to return the value as is. Once we got past 3 digits things got tricky, I knew ruby looks at strings and 
# # arrays from left to right, but in this case I wanted to have us look at the characters from right to left
# # in order to find the correct placement for the comma as my integer grew. I considered using String#insert for the comma, but
# # I couldn't seem to get this to work with my logic so then Array#push was me next option.


# Was your pseudocode effective in helping you build a successful initial solution?
# # Not at first. I didn't have the idea of counting from right to left until I tried my solution without #reverse. 
# # After a few fails and looking at my pseudocode a few more times it clicked that ruby counts the other direction
# # within and array or string. Once that clicked, I added more to my pseudo code and found an initial solution that worked.


# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# # I mainly found simple synonyms to refactor with. I used #size instead of #length, and #<< instead of #push. 
# # I looked at the methods in my initial solution on ruby docs and was pointed to these easy to read synonyms.
# # Since my initial solution was not working at first, like I said, I found Array#join and #push worked better for my logic rather than String#concat or #insert
# # Also my saving grace was the #reverse method, which allowed me to get ruby to behave more like a calculator in counting digits from right to left.

# How did you initially iterate through the data structure?
# # With #each_char. This allowed ruby to iterate through every character or "digit" in the string. 
# # Since I was iterating through a string, I believe that was why I initially was trying to use more string methods further along my code.


# Do you feel your refactored solution is more readable than your initial solution? Why?
# # Absolutely. Although there are no major method changes within the refactored process, I found synonyms and removed steps that eventually I found unnecessary.
# # When I went through ruby docs to find other methods that can accomplish my logic, I felt I would have had to completely change the look of my code.