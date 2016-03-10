# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution




# 3. Refactored Solution




# 4. Reflection



# Pad an Array

# I worked on this challenge with: Alicia Briceland

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.




def mode(arrays)
 freq = arrays.inject(Hash.new(0)) { |h,v| h[v] += 1; h } 
 max_value= arrays.max_by { |v| freq[v] }   
 
  
end 

mode([1,2,3,3,4,5])

mode(["a","b","c","c","d"])

mode([1,1,2,3,3,4])

mode([1,2,3])


# def mode(mode)
#   mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
#   mode_return.select { |k,v| v == mode_return.values.max }.keys
# end

#puts mode([5, 6, 7, 7, 7, 8, 8, 8, 10, 10, 10, 15])
