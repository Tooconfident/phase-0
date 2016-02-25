# Your Names
# 1) Ryan Wilkins
# 2) David Ramirez

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food| #this is iteration will reduce the error count so long as we are entering an item in the list
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0 #argument will be raised so long as there is still an error count
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0] #calling the value of library hash as an array and pulling the value out of the array
#   remaining_ingredients = num_of_ingredients % serving_size #remainder left over when you divide num by serv_size

#   if 
#     remaining_ingredients == 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" #when no remainder, calculation is complete
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end #when remainder exists, suggest what do with the remaining ingredients
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Refactor

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make] 
  remaining_ingredients = num_of_ingredients % serving_size 

  if num_of_ingredients >= serving_size
    print "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}." 
  else
    print "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  end 

  case remaining_ingredients
  when 5 then print " You can also make one cake."
  when 1,2,3,4 then print " You can make #{remaining_ingredients} of cookie."
  end
  puts
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#Reflection

# What did you learn about making code readable by working on this challenge?
## Logical steps seem to sometimes create code that has too many steps and can look quite confusing before refactoring.
## When we looked at what the code was doing, especially the error part it was hard to logically explain why that code was there.

# Did you learn any new methods? What did you learn about them?
## All the methods used were familiar to me. But "case" and "when" was new to me.

# What did you learn about accessing data in hashes? 
## library[item_to_make] was an easy way to access the values in library. 
## As well as using .has_key? to find the keys in library.

# What concepts were solidified when working through this challenge?
## Iteration as well as condition statements.