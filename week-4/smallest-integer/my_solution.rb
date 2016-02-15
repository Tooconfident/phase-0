# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
first = list_of_nums[0] #use the first number to compare to all other numbers in the array

list_of_nums.each do |i|
	if i < first
		first = i #if the next number less than the first number, it takes over the first number
	end
end
p first
end

smallest_integer([])