# Virus Predictor

# I worked on this challenge [by myself, with: Victoria].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #links this file to the state_data.rb file so it can be accessed as if it is within this file. It differs from require because require, requires an actual path, where as require_relative just needs to file to be in the same directory.

class VirusPredictor
# intializing the class with respective instances variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

# calls two different methods within VirusPredictor, the first with 3 instance variables as arguments, the second with 2 instance variables as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
    p "#{@state} will lose #{@number_of_deaths} people in this outbreak"
    p " and will spread across the state in #{@speed} months."
  end
# makes the following methods only referenceable within the class, until the end of the class
  private
# calculating predicted deaths based on population density and prints a string stating how many deaths for that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    
    @number_of_deaths = (@population * rate).floor

    

  end

# calculates what speed the virus spreads based on populations density, and outputs a string stating the speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

    

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, hash|  
  VirusPredictor.new(state_name).virus_effects
end
  
    # state_name = "Alabama"
  # => hash = {population_density: 94.65, population: 4822023},


# each {| key, value | block } → hsh

#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

  The first type is a string that points to the value. This creates a new object id everytime it is called.
  The second type is a symbol that points to a value. Using the symbol has one object id that does not change regardless of how often is it called, thus making it more efficient.


What does require_relative do? How is it different from require?

  Require requires you to provide a direct path to the referenced file, where as require_relative looks for the file in the same directory and in this case does not even need the file extension.

What are some ways to iterate through a hash?

  .each do

When refactoring virus_effects, what stood out to you about the variables, if anything?

  The instances variables were redundant and not needed. Also inserting the strings to print.

What concept did you most solidify in this challenge?

  Just an overall better understanding of how to write Classes. Continual practice with writing strings is importat.





=end