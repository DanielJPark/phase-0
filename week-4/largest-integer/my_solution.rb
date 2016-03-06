# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  max = nil
  list_of_nums.each do |x|
  		if max.nil? || max<x
  			max = x
  		end
  	end
  	return max
end

largest_integer([-10, 0, 10])    # => 10
largest_integer([-10, -20, -30]) # => -10