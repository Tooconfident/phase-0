# Create a Car Class from User Stories


# I worked on this challenge with Theo Paul.

# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

# 2. Pseudocode

=begin

create car class
create new method that initializes a new car
two arguments, one for the model and one for the car
  create a new instance variable that is equal to the car's model
  same for the color
  create a new instance variable that logs the distance travelled
  create a new 'compass' variable that shows which direction the car is facing (north, south, eaast, west)
  speed instance variable
  create instance variable that remembers the 'latest_action'

define a method with speed as the parameter
create new instance variable for the speed variable
attr_reader?

define a method that lets the car turn left
create an instance variable that stores which direction the car is facing
create a new array which stores north, east, south, west
to whichever value the compass variable is equal to replace it with the direction which procedes it
[north, east, south, west] IF compass is equal to 'east'
set compass variable to north etc


set letest_action to 'turned left'


define a method that lets the car turn right
create an instance variable that stores which direction the car is facing
set letest_action to 'turned right'

define a method which lets the car accelerate
increase the speed instance variable of the car
set letest_action to 'car slowed down'

define a method which lets the car decelerates
decrease the speed instance variable of the car
set letest_action to 'car sped up'

define a method a method which prints out distance travelled by the car
  display distance instance variable of the car


define a method called 'stop' that stops the car
  set the speed instance variable to 0
set letest_action to 'stopped'

define a method that prints out the latest_action instance variable


define a method that lets us store a pizza inside the car
store an instance of a pizza inside an array


define a method that lets us drop off a pizza
remove first index of the pizza container array inside the car
.shift?
=end



# 3. Initial Solution
class Pizza
  
  attr_reader :name, :toppings, :crust
  
  def initialize(name, toppings, crust)
    @name = name
    @toppings = toppings
    @crust = crust
  end
end

margarita = Pizza.new("margarita", "basil", "regular")
pepperoni = Pizza.new("pepperoni", "pepp", "thin")


class Car
  attr_reader :model, :color, :latest_action, :speed, :pizza
  
  
  def initialize(model, color)
    @model = model
    @color = color
    @distance_travelled = 0
    @direction = "north"
    @speed = 0
    @latest_action = nil
    @compass = ["north", "east", "south", "west"]
    @pizza_box = Array.new
  end


  
  
  def pick_up(pizza)

    @pizza_box.push(pizza)
    @latest_action = "pick up pizza" #"pick up #{Pizza.name}"
  end
    
  def deliver
    @pizza_box.shift
    @latest_action = "delivered pizza"
  end
  
  def left
    @compass.each do |turn| 
      if @direction == "north"
        @direction = "west"
        break
      elsif @direction == "west"
        @direction = "south"
        break
      elsif @direction == "south"
        @direction = "east"
        break
      else 
        @direction = "north"
      end
    end
    @latest_action = "left"
  end
  
   def right
    @compass.each do |turn| 
      if @direction == "north"
        @direction = "east"
        break
      elsif @direction == "east"
        @direction = "south"
        break
      elsif @direction == "south"
        @direction = "west"
        break
      else 
        @direction = "north"
      end
    end
    @latest_action = "right"
  end
  
  def accelerate(speed)
    @speed += speed
    @latest_action = "accelerate"
  end
  
  def decelerate(speed)
    @speed -= speed
    @latest_action = "decelerate"
  end
  
  def drive(distance, mph)
    @distance_travelled += distance
    @speed = mph
  end
  
  def stop
    @speed = 0
    @latest_action = "stop"
  end
  
  def distance_log
    puts @distance_travelled
  end
  
  def latest_action
    puts @latest_action
  end
  
  def check
    puts @speed
  end
end




# 4. Refactored Solution

# refactor to come later




# 1. DRIVER TESTS GO BELOW THIS LINE

# Create a new car of your desired model and type
# Drive .25 miles (speed limit is 25 mph)
# At the stop sign, turn right
# Drive 1.5 miles (speed limit is 35 mph)
# At the school zone, check your speed
# Slow down to speed limit 15 mph
# Drive .25 miles more miles
# At the stop sign, turn left
# Drive 1.4 miles (speed limit is 35 mph)
# Stop at your destination
# Log your total distance travelled

mustang = Car.new("Mustang", "Black")
mustang.pick_up(margarita)
mustang.pick_up(pepperoni)
mustang.drive(0.25, 25)
mustang.stop
mustang.right
mustang.drive(1.5, 35)
mustang.check
mustang.decelerate(20)
mustang.drive(0.25, 15)
mustang.stop
mustang.left
mustang.drive(1.4, 15)
mustang.accelerate(20)
mustang.stop
mustang.deliver
mustang.deliver
mustang.distance_log
mustang.latest_action




# 5. Reflection
# What concepts did you review in this challenge?
## Ruby Classes and how they communicate with each other.

# What is still confusing to you about Ruby?
## Once we created a new instance of our pizza class it was a little confusing figuring out how to get the other car class to use those instances correctly.


# What are you going to study to get more prepared for Phase 1?
## Attr methods, Ruby classes, class variables and the string interpolation.