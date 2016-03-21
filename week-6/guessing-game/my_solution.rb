
# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
Input: A number that is a "guess"
Output: The answer of High, Low, or Correct. It should also return True or False if solved.
Steps: 
1. Create a class titled GuessingGame
2. Initial the answer so method can accept it
3. Create if/else statements that return correct, high, or low.
4. Create method to answer if the game has been solved. It will return True or False.

=end
# Initial Solution

class GuessingGame
  attr_reader :answer
  
  def initialize(answer)
      @answer = answer 
  end

  def guess(answer)
    @guess = answer
    if @guess == @answer
      :correct
    elsif @guess > @answer 
      :high
    elsif @guess < @answer 
      :low 
    end
  end 
    
  def solved?
    if @guess == @answer
      true
    else 
      false 
    end 
  end 
end 

game = GuessingGame.new(20)

p game.solved?   # => false

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false

p game.guess(10) # => :correct
p game.solved?   # => true

# Reflection

=begin

1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Instance variables represent the objects characteristics such as name or age etc.
  Methods represent what object actually does.   

2. When should you use instance variables? What do they do for you?
  Instance variables give the objects discritive characteristics such as name or age.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control is the order in which the code is processed. It has to be organized in a certain manner in order for it to correctly process all the input information.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Strings don't have any real value and can be easily changed. Symbols on the other hand and immutable. Methods will not alter them.

=end