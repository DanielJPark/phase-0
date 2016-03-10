# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

	#An array, minimum size as an integer, optional argument of any data type. 

# What is the output? (i.e. What should the code return?)

	#An array with updated information.

# What are the steps needed to solve the problem?
	
	#For Destructive Method
	#Determine the number of elements in the initial array method count.
	#Assign a variable array_size to the number of elements in the array.
	#compare the variable array_size with the min_size.
	#if variable array_size is less than minimum size add optional argument(s) into array, return new array.
	#else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
	#return new array.
	#


	#For Non-Destructive Method
	#Determine the number of elements in the initial array method count.
	#Assign a variable array_size to the number of elements in the array.
	#compare the variable array_size with the min_size.
	#if variable array_size is less than minimum size add optional argument(s) into array, return new array.
	#else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
	#return new array.
	

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 # Your code here
 array_size = array.length
     if (array_size < min_size) && (value == nil)
     until array_size == min_size 
          array.push(nil)
   end
   
   if (array_size < min_size) && value != nil
     until array_size == min_size 
      array.push(value)
   end
     
   if (array_size >= min_size) or (min_size == 0)
         return array 
     end
 return array
end


def pad(array, min_size, value = nil) #non-destructive
 # Your code here
 my_array = []
 array.each { |x| my_array.push(x) }
 array_size = my_array.length
     if (array_size < min_size) && (value == nil)
     until array_size == min_size
           my_array.push(nil)
   end

   if (array_size < min_size) && value != nil
     until array_size == min_size 
       my_array.push(value)
   end

     if (array_size >= min_size) or (min_size == 0)
         return my_array 
     end
 return my_array
end

pad([1,2,3], 5)

pad!([1,2,3], 5)

# 3. Refactored Solution



# 4. Reflection