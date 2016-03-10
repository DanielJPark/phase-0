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
def mode(arrays)
 freq = arrays.inject(Hash.new(0)) { |h,v| h[v] += 1; h } 
 highest_freq=freq.values.max
 

 mode_hash = freq.select {|key, value| value == highest_freq}
 mode_hash.keys
end

mode([1,2,3,4,4,5,5])



# 4. Reflection