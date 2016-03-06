# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  min = nil
  list_of_nums.each do |x|
  		if min.nil? || min>x
  			min = x
  		end
  	end
  return min
end


smallest_integer([1, 2, 3])       # => 1
smallest_integer([0, -10, 10])    # => -10
smallest_integer([-10, -20, -30]) # => -30