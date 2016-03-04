# Virus Predictor

# I worked on this challenge with Wesley El-Amin.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is linking a file to the current file. The process is very similar to linking html files to stylesheets.
# 'Require' uses a full path as its argument, whereas require-relative looks for files relative to the current file.
#
require_relative 'state_data'

class VirusPredictor
# initializing an instance of the class that takes three arguments
# we define these arguments as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# running instance perdicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# uses population density to assign a value to the variable number_of_deaths
# prints the name of the state and that number of deaths in a string
  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

    def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * 0.4).floor if @population_density >= 200
    number_of_deaths = (@population * 0.3).floor if @population_density >= 150
    number_of_deaths = (@population * 0.2).floor if @population_density >= 100
    number_of_deaths = (@population * 0.1).floor if @population_density >= 50
    number_of_deaths = (@population * 0.05).floor if @population_density < 50


    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# uses population density to assign a value to variable speed
# prints the speed in a string
  # def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    speed += 0.5 if @population_density >= 200
    speed += 1 if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2 if @population_density >= 50
    speed += 2.5 if @population_density < 50
      
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


def each_state(hash)
  hash.each do |name, data|
    state = VirusPredictor.new(name, data[:population_density], data[:population])
    state.virus_effects
  end
end

each_state(STATE_DATA)


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section 

# What are the differences between the two different hash syntaxes shown in the state_data file?
## The first is rocket hash syntax which uses a string or integer as a key, then the => notation points to the value.
## The values of this hash is also a hash an uses the symbol syntax style. This creates unique symbols for the keys of the hash.

# What does require_relative do? How is it different from require?
## Require_relative is linking a file to the current file. The process is very similar to linking html files to stylesheets.
##'Require' uses a full path as its argument, whereas require-relative looks for files relative to the current file.

# What are some ways to iterate through a hash?
## We used #each. You can go more specific with #each and use #each_pair, #each_key or #each_value when you want to only interate through they key or value of a hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
## They were instance variables, which allowed us to eliminate them as arguments for the virus_effect method.

# What concept did you most solidify in this challenge?
## I hadn't really had any practice with private methods before this challenge, so that was interesting.
## Instance variables and how they communicate within a class, hash iteration and DRYness.