# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
# initial soultion

#count_between([2,5], 3, 10)

# def count_between(list_of_integers, lower_bound, upper_bound)
#   #Your code goes here!
#   if list_of_integers == []
#   	list_of_integers == 0
#   end
#   in_range = []
#   list_of_integers.each do |number|
#   	if number >= lower_bound && number <= upper_bound
#   		in_range << number
#   	end
#   end
#   	puts in_range.length
# end


def count_between(list_of_integers, lower_bound, upper_bound)
	if list_of_integers == []
		0
	elsif upper_bound < lower_bound
		0
	elsif lower_bound = upper_bound
		list_of_integers.count
	end
	
	i=0
	list_of_integers.count {|i| i>= lower_bound && i <= upper_bound}

	

end
count_between([1,2,3], 0, 100)      # => 3
count_between([-10, 1, 2], 0, 100)  # => 2
count_between([10, 20, 30], 10, 30) # => 3
count_between([], -100, 100)        # => 0
count_between([0], 0, 0)            # => 1
count_between([5,10,20], 6, 15)



# def count_between(list_of_integers, lower_bound, upper_bound)
#   # Your code goes here!
#   int = 0
#   list_of_integers.count {|int| int >= lower_bound && int <= upper_bound}
  

# end

# puts count_between([1,2,3], 0, 100)      # => 3
# puts count_between([-10, 1, 2], 0, 100)  # => 2
# puts count_between([10, 20, 30], 10, 30) # => 3
# puts count_between([], -100, 100)        # => 0
# puts count_between([0], 0, 0)            # => 1
