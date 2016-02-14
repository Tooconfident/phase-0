# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb

# 2. What is the line number where the error occurs?
# => The command line says 170 but I believe the error is on line 17.

# 3. What is the type of error message?
# => syntax error

# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter says it was expecting an end command. There is no end-of-input.

# 5. Where is the error in the code?
# => Again the interpreter is pointing on line 170 at the end of the reflection comment. 
# => I believe the error is actually on line 17, there should be another end following the end on line 16.

# 6. Why did the interpreter give you this error?
# => A method was defined on line 13 and was not ended properly. 
# => There is an end corresponding with the "while" command on line 14 but no end for the entire method.
# => This is why the error jumped down to line 170, the last line of the file, it wanted an end for the first method defined in the program.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => line 42

# 2. What is the type of error message?
# => in `<main>' or a (NameError)

# 3. What additional information does the interpreter provide about this type of error?
# => A variable or method was not defined

# 4. Where is the error in the code?
# => The error was found at 'south_park'.

# 5. Why did the interpreter give you this error?
# => It is expecting the variable 'south_park' to be defined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => line 61

# 2. What is the type of error message?
# => another '<main>' error but this time a (NoMethodError)

# 3. What additional information does the interpreter provide about this type of error?
# => The method has not been defined.

# 4. Where is the error in the code?
# => The method cartman() has not been defined.

# 5. Why did the interpreter give you this error?
# It is expecting correct method definition syntax. ex: 'def cartman()'

# --- error -------------------------------------------------------

# def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => line 80

# 2. What is the type of error message?
# => (ArgumentError) 

# 3. What additional information does the interpreter provide about this type of error?
# => It's sayingwrong number of arguments meaning the amount of arguments don't meet the parameters set.

# 4. Where is the error in the code?
# => Right where we define our method cartmans_phrase

# 5. Why did the interpreter give you this error?
# => Because no parameters were set when the method was defined. 
# => It says (1 for 0) because 1 argument was called when there are 0 parameters set.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
  # puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => The interpreter sees the error on line 104, but it also relates to line 108.

# 2. What is the type of error message?
# => Another (ArgurmentError)

# 3. What additional information does the interpreter provide about this type of error?
# => Again it's saying wrong number of arguments, this time 0 for 1.

# 4. Where is the error in the code?
# => On line 108, there is no argument called to meet the parameter set.

# 5. Why did the interpreter give you this error?
# => The method was defined with a parameter and expects an argument.
# => When the method was called there was no argument included.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
  # puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => line 134

# 2. What is the type of error message?
# => (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
# => Once again we have the wrong number of arguments called upon.

# 4. Where is the error in the code?
# => When the method cartmans_lie is called, there is only one argument.

# 5. Why did the interpreter give you this error?
# => Because when the method was defined, it was set with two parameter.
# => Those parameters were not met with the proper amount of arguments.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 154

# 2. What is the type of error message?
# => (TypeError)

# 3. What additional information does the interpreter provide about this type of error?
# => A string can't be coerced into a Fixnum.

# 4. Where is the error in the code?
# => 5 is being multiplied by a string. The error is happening with the '*' method.

# 5. Why did the interpreter give you this error?
# => Because a number cannot be multiplied by a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# =>  line 173

# 2. What is the type of error message?
# => ZeroDivisionError

# 3. What additional information does the interpreter provide about this type of error?
# => Something is being divided by 0

# 4. Where is the error in the code?
# => The '/' method.

# 5. Why did the interpreter give you this error?
# => Because like any good calculator knows, you cannot divide by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 193

# 2. What is the type of error message?
# => (LoadError)

# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter cannot load the file being called.

# 4. Where is the error in the code?
# => 'require_relative' is asking this errors.rb file to refer to a relative file.

# 5. Why did the interpreter give you this error?
# => The relative file being called does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => Probably the second one because the line number was confusing and the error type was in a completely different place than the example's was. 
# => IN FACT most of the error types were found withing parenthesis at the end of the error instead of where the syntax error example was placed.

# How did you figure out what the issue with the error was?
# => Once I saw it there was no end-of-input I knew we were missing a second 'end' command. This has happened to me a lot.

# Were you able to determine why each error message happened based on the code? 
# => Yes.

# When you encounter errors in your future code, what process will you follow to help you debug?
# => I will first look at the line being referenced. Then I will look at the error description. 
# => If these first two steps don't solve it, I will look at the error type and see if there is a specific place the error is pointing to.