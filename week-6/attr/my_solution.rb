#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: a New instance of a greeting.
# Output: "Hello #{name}! How wonderful to see you today."
# Steps:
## Start with class NameData
## initialize with a name variable
## Create class Greetings
### intialize with an instance of NameData
### define another method to display the greeting with an input of name

class NameData
attr_reader :name
  def initialize
    @name = "Ryan Wilkins"
  end
end


class Greetings
  def initialize
    @NameData = NameData.new
  end
  def hello
    puts "Hello #{@NameData.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection

# Release 1

# What are the methods doing?
## Creating a person's profile (the class) that includes their name, age and occupation. 

# How are they modifying or returning the value of instance variables?
## They use instance methods change_my_* that allow you to call on instance variables to change their value.
## This is first accomplished by creating a new instance of the class with Profile.new


# Release 2

# What changed between the last release and this release?
## They added attr_reader :age.

# What was replaced?
## attr_reader :age replaced the method #what_is_age.

# Is this code simpler than the last?
## At this moment it is more DRY and simple yes.

# Release 3

# What changed between the last release and this release?
## attr_writer :age was added.

# What was replaced?
## The method #change_my_age was replaced with attr_writer.

# Is this code simpler than the last?
## Yes, having attr method allows us to replace instance methods with multiple lines of code. 
## This example can be even simpler is we replace, att_reader and att_writer with attr_accessor.
 
# Release 5

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end

# Release 6

# What is a reader method?
## It returns a value outside of the class, but cannot be changed.

# What is a writer method?
## It allows you to change the value, but it cannot be readable.

# What do the attr methods do for you?
## They allow you simplify code within classes. 
## Using the attr methods declare instance variables from the beginning and allow all the instances you use those variables going forward in the class.

# Should you always use an accessor to cover your bases? Why or why not?
## No because having all the instance variables have the ability to be changed can lead to debugging problems.
## Sometimes you may not want your variables to be changed or for other methods or classes to have too much access to those instance variables.

# What is confusing to you about these methods?
## I originally was confused about this being a class or instance method. But now after doing the last relase I see it is a class method
## because we access it across multiple methods and not just the instances inside each of those classes.
## It seems pretty straight forward now that we got to play with it.
