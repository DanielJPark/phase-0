# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides on die
# Output: a random number between 1 and the number of sides on the die or the arguement error.
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    raise ArgumentError.new("Not enough sides. Please try again.") 
	end
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)+1
  end
end



# 3. Refactored Solution







# 4. Reflection

What is an ArgumentError and why would you use one?

	It is a disclaimer when the parameters of the class are not fulfilled. It tells the user that the information provided does not satisfied the needs of the code.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	Rand

What is a Ruby class?

	A blueprint of methods that create objects.

Why would you use a Ruby class?

	A call methods that create similar results.

What is the difference between a local variable and an instance variable?

	A local variable is used in a method while an instance variable is used in a class.

Where can an instance variable be used?

	An instance variable is used in a class.



