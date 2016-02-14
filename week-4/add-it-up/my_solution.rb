# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Jackie Feminella.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: sum of the numbers inside the array
# Steps to solve the problem.
	# define the method called total
	# the input/arguement is an array
	# we need to get the sum of each number in the array
	# return the total sum

# 1. total initial solution
def total(array)
	sum = 0
	if array.length > 0 then
		array.each do |i|
			sum += i
	end
	return sum
end
end


# 3. total refactored solution



# 4. sentence_maker pseudocode

# make sure all pseudocode is commented out!
# make method called sentence_maker
# Input: is an array of strings
# Output: each element joined into a sentence
# First letter should be capitalized and the sentence should end with a '.'




# 5. sentence_maker initial solution
def sentence_maker(strings)
	strings.each do |word|
		word = word.to_s

	sentence = strings.join(" ")

	return sentence.capitalize + "."
end
end

#puts sentence_maker(["i", "am", "happy"])


# 6. sentence_maker refactored solution

 
#'strings.join(" ")' was added over 'sentence + word + " "'
