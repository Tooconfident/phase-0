# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 4
# input = a list as an array and letter to delete
# scan through list to find words with desired letter to delete
# if word contains the desired letter, delete that workd from the list
# output should be new list without removed words
def my_array_deletion_method!(source, thing_to_delete)
  remove_letter = source.find_all { |letter| letter.to_s.include?(thing_to_delete)}
  
  remove_letter.each { |word| source.delete(word)}
  
  p source
end

my_array_deletion_method!(i_want_pets, "t")
p i_want_pets

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)  
  p source
end

my_hash_deletion_method!(my_family_pets_ages, "George")
p my_family_pets_ages
# Identify and describe the Ruby method(s) you implemented.
# # include is an enumerable that returns true if an element in the blockof code contains a certain object being searched for.
# # I used this to determine which strings contains a certain letter.
# # Then using .find_all another enumerable,which returns an array containing all the elements within the block of code, 
# # I searched the entire array for strings containing certain letters.
# # Finally .delete simply removes the desired object from the list. It removes the argument within an array, as well as the key and value pair from a hash.
# # .delete was much easier to accomplish with the hash challenge, because we simply just needed to remove on animal from the list.

# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# # Share any tricks you used to find and decipher the Ruby Docs
# # # I took advice from the phase 0 research video and basically started looking for enumerable, hash and array methods
# # # that looked like they would help accomplish my code. I first found Enumerable#reject and wanted to use that because 
# # # because "reject" sounded like delete. When I realized the .reject method was better for iteration and would return only the objects
# # # that we're false within the block, I saw ruby docs was referencing find_all. 
# # # Once I replaced .reject with .find_all I realized iteration would now return true objects and I could continue with the deletion methods from there.


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# # # I'm getting way more comfortable with researching ruby docs. 
# # # The ruby language is very similar to spoken english so finding any experimenting with certain methods is making a lot more sense. 
# # # I'm also learning how irb is very useful in experimenting with new methods.
# # # Pseudocode is also helping me teach what I did to others. With good pseudocode I am able to find methods that accomplish my tasks.
# # # Once I've then found a code that works, I refer back to me pseudocode to help articuluate what I just accomplished and how with the new methods I found on ruby docs.