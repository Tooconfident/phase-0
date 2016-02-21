# Pseudocode
# Define a method for an accountability group that takes a list of people as an argument.
# Sort through the list
# Group the list, ideally in groups of 5 but no less than 3
# If the amount of people in the list is divisible by 5 then there should be all groups of 5
# if there is any remaining people after groups of 5 have been made, move the groups around until you have groups of 4 and 3 but no less than 3.
# if there is one remaining person, adjust the final two groups so there are groups of 4 and 3. We do not want groups of 1 or 2


cohort = ['Adam Pinsky', 'Afaan Naqvi', 'Alana Farkas', 'Andrew Crowley', 'Andrew Vathanakamsang', 'Anna Lansfjord', 'Benjamin Heidebrink', 'Blair White', 'Brad Lindgren', 'Brian Donahue', 'Brian Mosley', 'Brittney Braxton', 'Camila Crawford', 'Charlie Lee', 'Chunyu Ou', 'Daniel Homer', 'Daniel Shapiro', 'Dave Hostios', 'David Kaiser', 'David Ramirez', 'Emily Osowski', 'Emmet Garber', 'Eric Gumerlock', 'Erica Lloyd', 'Gregory Toprak', 'Hanna Taylor', 'Jack Baginski', 'Jaclyn Feminella', 'Jasmeet Chatrath', 'Jason Allen', 'Jon Norstrom', 'Jonathan Nicolas', 'Joseph Yoo', 'Joshua Lugo', 'Joshua Wu', 'Julia Giraldi', 'Kari Giberson', 'Katherine Broner', 'Kevin Fowle', 'Kevin Niu', 'Kevin Perkins', 'Leo Kukhar', 'Li-Lian Ku', 'Marita Deery', 'Michael Verthein', 'Milorad Felbapov', 'Nick Russo', 'Noah Schutte', 'Oscar Delgadillo', 'Ryan Dempsey', 'Ryan Wilkins', 'Sami Zhang',  'Saralis Rivera', 'Sean Norton', 'Shyh Hwang', 'Sydney Rossman-Reich', 'Theo Paul', 'Tomasz Sok', 'Wesley El-Amin']

def acct_groups(names)
	groups = Array.new
 	groups = names.each_slice(5).to_a
 	if 
 		names.size % 5 == 0
 	elsif 
 		groups[-1].length == 2
 		groups[-1].push (groups[-2].delete_at(-1)) 
 	elsif 
 		groups[-1].length == 1
 		groups[-1].push (groups[-2].delete_at(-1))
 		groups[-1].push (groups[-2].delete_at(-2))
 	end
 	p groups
end

acct_groups(cohort)

#Refactor
def acct_groups(names)
	if names.length > 5
		groups = []
		groups = names.shuffle.each_slice(5).to_a
		p groups
	else
		p names
	end
end

acct_groups(cohort)

# What was the most interesting and most difficult part of this challenge?
# # The most interesting AND most difficult part of the challenge was limiting the group size to no less than 3 people.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# # Indeed. I have also put in practice writing down some logic on paper first before putting it into readable pseudocode.

# Was your approach for automating this task a good solution? What could have made it even better?
# # I think so. Adjusting the groups in the end of my solution made it so there would be no chance to groups less than 3 people. 
# # It seems though, after refactoring there was a much simpler way to do this.

# What data structure did you decide to store the accountability groups in and why?
# # An array made the most sense to me because it allowed me to manipulate the group sizes by calling on the index values for the groups array using positive and negative integers.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# # I learned this challenges solution can be simplified significantly. I also learned about #shuffle.
# # This allowed the groups to be randomized instead of in the order the original list array is in.