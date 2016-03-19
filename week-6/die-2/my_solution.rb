# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin 
Input: An Array of strings.
Output: 1 of the items in the array.
Steps: 
1.Initialize the class Die with an array as input
2.Raise arguement error "Not enough sides" if number of sides is 0
3.Define sides as number of objects in array
4.Define the roll to randomly choose an item within the array

=end
# Initial Solution
=begin
class Die #name the class
  def initialize(sides) #allows us to create objects using the class
    raise ArgumentError.new("Empty array") if sides.length == 0 # raise argument error if something is wrong with the argument. In this case total number of objects inside sides is equal to 0.
    @sides = sides
  end

  def sides
    @sides.length
  end

  def roll
    rand([0..(sides - 1)])
  end
end
=end
 
# Refactored Solution

class Die #name the class
  def initialize(sides) #allows us to create objects using the class
  	raise ArgumentError.new("Empty array") if sides.length == 0 # raise argument error if something is wrong with the argument. In this case total number of objects inside sides is equal to 0.
  	@sides = sides
  end

  def sides
  	@sides.length #return the number of objects within the array
  end

  def roll
  	@sides.sample #randomly return an item from the array
  end
end

 
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll
roman_die = Die.new(['I', 'II', 'III', 'IV', 'V', 'VI'] ) 
p roman_die.roll
coin = Die.new(["Heads","Tails"])
p coin.sides
p coin.roll



# Reflection
=begin 

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  The logic was similar as last week's die however rand would not work properly for this. Using sample was much more efficient.

What does this exercise teach you about making code that is easily changeable or modifiable? 

  When the code is clean and well written it is easy to go back and modify/make changes.

What new methods did you learn when working on this challenge, if any?

  sample. It randomly returns an item from an array.

What concepts about classes were you able to solidify in this challenge?

  How to create/use a class. 
  With this class I was able to create different types of "die" with different number of sides and specific characters of the sides.

=end