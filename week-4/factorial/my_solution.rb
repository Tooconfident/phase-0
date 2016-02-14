# Factorial
# I worked on this challenge with Jackie Feminella.
# Your Solution Below
def factorial(n)
    if n == 0
        1
    else
      n*factorial(n-1)
  end
end

#puts factorial(40)

#while number is greater than 1, multiply the number by number-1 until (number-1 = 1)
#  new_number == number * (number -= 1)
# example: new_number == 5 * (5 -=1 essentially 5*4*3*2*1)
# break if number == 1
#    else
#  return new_number

#factorial(5)


#Psuedocode:
# Define method called factorial --
# This method will take an argument as its input --
# The argument should be non-negative integer for its input
#   If the input is a negative integer, we ask for a number greater than or equal to 0
#     Or we could respond with 'Please put in a non-negative integer'
#     Or we could change the negative input to the positive integer (ex. -2 change to 2)
# The method will write the factorial of the input (argument)
# When we perform the method on the input, it returns the factorial result
