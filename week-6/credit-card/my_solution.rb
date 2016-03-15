=begin
# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [with: Daniel J Park].
# I spent [#] hours on this challenge.

# Pseudocode
# Input: number
# Output: boolean
# Steps:

1. made a method 'validate'
2. separate numbers into individual digits in an array => (turn number into string, break up string into separate characters, turn each character back into a number (.map))
3. double every other digit startng from 0 (0, 2, 4...) (use counter and while loop, increment counter by 2)
4. separate all new numbers into individual digits (convert back to string, separate by characters, turn back into integers (.map))
5. add up all the individual digits
6. if result mod 10 equals zero, then true, else false

Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(acct_number)
    @acct_number = acct_number
  end
  
  def validate
    initial_digits = @acct_number.to_s.split("").map{|num| num.to_i} # "4563960122001999" => [4, 5, 6, ...]
    
    i = 0
    while i < initial_digits.length 
      current_item = initial_digits[i]
      initial_digits[i] = current_item * 2
      i = i + 2
    end
    
    initial_digits = initial_digits.map{|num| num.to_s}.join.split("").map{|num| num.to_i} # [14, 2...]
    
    sum = initial_digits.inject{|sum, num| sum + num}
    if sum % 10 == 0 
      puts "This card is valid"
      true
    else
      puts "this card is invalid"
      false
    end
  
  end
  
end


card = CreditCard.new(4563960122001999)

p card.validate

# Refactored Solution 
class CreditCard
  def initialize(acct_number)
    raise ArgumentError.new("wrong size card") if acct_number.to_s.length < 16
    raise ArgumentError.new("wrong size card") if acct_number.to_s.length > 16
    @acct_number = acct_number
  end
  
  def check_card
    initial_digits = @acct_number.to_s.split("").map{|num| num.to_i} # "4563960122001999" => [4, 5, 6, ...]
    
    i = 0
    while i < initial_digits.length 
      current_item = initial_digits[i]
      initial_digits[i] = current_item * 2
      i = i + 2
    end
    
    initial_digits = initial_digits.map{|num| num.to_s}.join.split("").map{|num| num.to_i} # [14, 2...]
    
    sum = initial_digits.inject{|sum, num| sum + num}
    if sum % 10 == 0 
      puts "This card is valid"
      true
    else
      puts "this card is invalid"
      false
    end
  
  end
  
end


#Reflection 

=begin



What was the most difficult part of this challenge for you and your pair?

	The hardest part in this challenge for me was probably the pseudocoding part.
	It was challenging to organize step by step the process on how this was going to be done. 

What new methods did you find to help you when you refactored?

	map, split, join, inject

What concepts or learning were you able to solidify in this challenge?

	I definitely got an overall better understanding of how Ruby works. 
	More specifically I now have a stronger understanding of what classes are and how they work.
	My pair helped me with some simple drills to really get good practice in writing and methods items in a class.
	
 
=end