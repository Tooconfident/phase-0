# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# array[1][1][2][0]


# # ============================================================

# # Hole 2
# # Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each_with_index do |element, index|
 if element.kind_of?(Array)
   element.map! { |num| num = num + 5 }
 else
   number_array[index] = element + 5
 end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# startup_names.each_with_index do |element, index|
#  if startup_names[index].kind_of?(Array)
#    startup_names[index].each_with_index do |elem, idx|
#      if startup_names[index][idx].kind_of?(Array)
#        startup_names[index][idx].map! { |x| x + "ly" }
#      else
#        startup_names[index][idx] += "ly"
#      end
#    end
#  else
#    startup_names[index] += "ly"
#  end
# end



#Refactored

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inn| (inn.kind_of? Array) ? inn.map! {|word| word + "ly"} : inn + "ly"}
  else
    element + "ly"
  end
end

p startup_names

# What are some general rules you can apply to nested arrays?
## You need an index to access the nested array.

# What are some ways you can iterate over nested arrays?
## We used each_with_index in out initial solution, then I discovered by iterating a block WITHIN a block also can accomplish our solution without the need of an index.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
## each_with_index was new to me, but not my partner. This allows us to call an block with two argument, the object and its index.
## It also helped out result to be destructive.
## Having an index made iterating through nested arrays much easier until I found out how to perform iteration commands within blocks.