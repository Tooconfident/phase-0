# Calculate the mode Pairing Challenge

# I worked on this challenge with: Chunyu Ou.

# I spent 1.75 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 
# # an array 

# What is the output? (i.e. What should the code return?)
# # an array of the items that are most frequent.

# What are the steps needed to solve the problem?
# # define a method called mode
# # mode takes an argument called array
# # we want the method to look at a list of values
# # find which values appear most frequently
# # return those found values


# 1. Initial Solution
def mode(array)
  hash = {}
  	array.each do |item|
  		if hash[item]
  		hash[item] = hash[item] + 1
  		else
  		hash[item] = 1
  		end
  	end
  	max_value = hash.values.max
	hash.select {|k, v| k if (v == max_value)}.keys

end

p mode([1,2,3,3])
p mode([4.5, 0, 0])
p mode([1.5, -1, 1, 1.5]) 
p mode([1,1,2,2]) 
p mode(["who", "what", "where", "who"])



# 3. Refactored Solution
def mode(array)
	hash = {}
	array.each {|item| (hash[item]) ? (hash[item] += 1) : (hash[item] = 1)}
	hash.select {|k, v| k if (v == hash.values.max)}.keys
end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# # We used a hash because we could use the input array's values as our hash's keys, 
# # and then the hash value would be the frequency that key appears.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# # I believe it's getting easier every time. I'm not sure if enough steps are being broken down still.
# # I feel the more comfortable I become understand what ruby can do as a language,
# # the better my pseudocode can be.

# What issues/successes did you run into when translating your pseudocode to code?
# # Our pseudocode was succesful at least in translating the main steps we wanted our code to take.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# # Enumerables #each and #select. Our refactoring didn't need new methods, but we did simplify the code to make it easier to read.