# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # call the method food_list
  # set default quantity (quantity = 0)
  # creat a hash, where key is item and value is quantity
  # print the list to the console [can you use one of your other methods here?] - use print method for this step
# output: [what data type goes here, array or hash?] - hash, a list in the form of strings

def food_list
	list = Hash.new 
	list ["carrots"] = 0
	list ["apples"] = 0
	list ["pizza"] = 0
	list ["cereal"] = 0
	list
end
p food_list


# Method to add an item to a list
# input: item name and optional quantity
# steps: create add_item method, add items to list
# output: new item with quantiy

def add_item(list, item, quant)
   list[item] = quant
end

#p add_item("item", 1)

# Method to remove an item from the list
# input: item to delete
# steps: using hash delete method to remove an item
# output: new list without the items that were removed

def delete_item(list, item)
	del_list = list.delete(item)
end

# Method to update the quantity of an item
# input: take new value for specified key
# steps: Input a value and assign that to the specified key
# output: item with new quantity

def update_quantity(list, item, quant)
  list[item] = quant
end

# Method to print a list and make it look pretty
# input: list of hash we want to print
# steps: print keys as strings with corresponding value
# output: keys as strings and their quantity

def print_list(list)
	list.each do |item, quantity| puts "#{item}: #{quantity}"
		
	end
end

list = food_list
p add_item(list, "Lemonade", 2)
p add_item(list, "Tomatoes", 3)
p add_item(list, "Onions", 1)
p add_item(list, "Ice Cream", 4)
p delete_item(list, "Lemonade")
p update_quantity(list, "Ice Cream", 1)
print_list(list)

# What did you learn about pseudocode from working on this challenge?
   # Pseudocode is very useful in breaking down all the steps we want to take to accomplish our code. 
   # It also helps research several methods to accomplish this. I need a lot more practice with pseudocode.
   # I feel my steps can be a lot more planned out.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
   # Well because the final goal was to have a result that posted both an item and a quantity, the hash made the most sense to start and finish with. 
   # Using an array made the most sense for the middle methods because of how we needed to access the information, 
   # but it would have made finding values for the final steps because we would have had to remember the order of our original list and all the values' key index numbers.

# What does a method return?
   # It will return the last calculation within the method unless you assign an explicit return within.

# What kind of things can you pass into methods as arguments?
   # Strings, integers, floats, arrays, hashes and even other methods.

# How can you pass information between methods?
   # When you build arguements for each method, you can insert other methods as the argument value.

# What concepts were solidified in this challenge, and what concepts are still confusing?
   # It was a little confusing at first to get understand how to get the methods to communicate with each other and finding the correct amount of arguments when defining a method. 
   # Once the assignment was complete, inter-method communication became more clear and now that I know you can use a method as an argument, it all makes sense now. 