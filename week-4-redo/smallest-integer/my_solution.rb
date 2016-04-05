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



#initial solution
# def smallest_integer(list_of_nums)
#   # Your code goes here!
#  		if list_of_nums == []
#  			nil
 	
#  		elsif smallest = list_of_nums[0]
#  			list_of_nums.each do |number|
 		
#  			if number < smallest 
#  			smallest = number
#  			end
#  		end

#  	smallest
# 	end
# end


# puts smallest_integer([0,2,1])
# puts smallest_integer([-10,2,3,6,1])


#refactored solution
def smallest_integer(list_of_nums)
	list_of_nums.min
end

puts smallest_integer([])

puts smallest_integer([-10,2,3,6,1])
