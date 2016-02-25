# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Emmett Garber.
# We spent 2 hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: true or false
# Steps:
## create a class CreditCard
## define initialize method that returns an error if the input is not equal to 16 digits
## break down integer into each individual number
## double every other number starting with second to last
## while the array is greater than 0
### x = array.pop, y = array.pop
### create new array
## if double digit number, break into two 1 digit numbers
## sum array, if % 10 == 0 
### return true

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
   def initialize(number)
       array = number.to_s.chars
       @array = array
       unless array.count == 16
           raise ArgumentError.new("Credit Card number must be 16 digits")
       end
       p @array
   end
   
   def double
       new_array = Array.new
       @new_array = new_array
       while @array.count > 0
           x = @array.pop
           y = @array.pop
           @new_array << x.to_i
           @new_array << (y.to_i * 2)
       end
       p @new_array
   end
   
   def split_number
       final_array = Array.new
       @final_array = final_array
       @new_array.each { |number|
           if number < 10
               @final_array << number
           else
              split_array = number.to_s.split(//)
              split_array.each {
               x = split_array.pop
               y = split_array.pop
               @final_array << x.to_i 
               @final_array << y.to_i }
           end
       }
       p @final_array
   end
   
   def check_card
   	double
   	split_number
     if @final_array.inject(0) { | x, y | x + y } % 10 == 0
         return true
     else 
         return false
     end
   end
end

card = CreditCard.new(4408041234567901)
card.double
card.split_number
card.check_card



# Refactored Solution

class CreditCard
   def initialize(number)
       @array = number.to_s.chars
       unless @array.count == 16
           raise ArgumentError.new("Credit Card number must be 16 digits")
       end
   end
   
   def double
       new_array = Array.new
       @new_array = new_array
       while @array.count > 0
           x = @array.pop
           y = @array.pop
           new_array << x.to_i
           new_array << (y.to_i * 2)
       end
    end
   
   def split_number
   	double
       final_array = Array.new
       @final_array = final_array
       @new_array.each { |number|
           if number < 10
               final_array << number
           else
              split_array = number.to_s.split(//)
              split_array.each do
               x = split_array.pop
               final_array << x.to_i
               y = split_array.pop
               final_array << y.to_i 
           	   end
           end}
    end
   
   def check_card
   	split_number
    @final_array.inject(0) { | x, y | x + y } % 10 == 0
   end
end

card = CreditCard.new(4408041234567901)
card.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?
 ## Understanding why we had to call on the previous two methods to get our final method to work.

# What new methods did you find to help you when you refactored?
 ## #inject and #pop were fairly new methods I haven't had much practice in. 
 ## We used them in our initial solution to get it to work instead of using #each.
 ## We are happy overall with the methods used in our initial solution so during refactoring we just cleaned up for DRYness.

# What concepts or learnings were you able to solidify in this challenge?
 ## Instance variables and how they communicate between methods.
 ## The only thing that is still confusing is why we have to call on the other previous methods to get the next method to work correctly.