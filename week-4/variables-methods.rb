puts 'Please enter your first name.'
	first_name = gets.chomp

puts 'Please enter you middle name.'
	middle_name = gets.chomp

puts 'Now finally, please enter you last name.'
	last_name = gets.chomp

puts 'Please to meet you ' + first_name + " " +  middle_name + " " + last_name + "."


puts 'What\'s your favorite number?'

number = gets.chomp

better_number = number.to_i + 1

puts "I think " + better_number.to_s + " is a better number, don\'t you " + first_name + "?"


# https://github.com/Tooconfident/phase-0/blob/master/week-4/address/my_solution.rb

# https://github.com/Tooconfident/phase-0/blob/master/week-4/math/my_solution.rb

=begin

How do you define a local variable?
	A local variable is a variable found within a method. It cannot be accessed outside the method. It usually start with a lower case letter.

How do you define a method?
	A method is essentially a shortcut in ruby that allows you to do something. When you want to make your own method that is not built-in to ruby you use the following:
	
	"def my_method(parameter)
	 #method content goes here
	 end "

What is the difference between a local variable and a method?
	The local variable is an object that lives within a method.

How do you run a ruby program from the command line?
	"ruby name_of_ruby_file.rb"

How do you run an RSpec file from the command line?
	"rspec name_of_spec_file.rb"

What was confusing about this material? What made sense?
	This all mostly made sense. I understand how puts returns nil now for the most part but I am still a little confused by when it is the appropriate time to use "p" or "return" or nothing 
	before the return. I was a little confused my the repetetive nature of these reflection questions as well. 

=end
