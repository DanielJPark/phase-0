# Calculate the mode Pairing Challenge

<<<<<<< HEAD
# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.
=======
# I worked on this challenge [by myself, with: Elizabeth ALexander]

# I spent [4] hours on this challenge.
>>>>>>> 5.3

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
<<<<<<< HEAD
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=======
	#Input is an Array.
# What is the output? (i.e. What should the code return?)
	#Output will be either the original Array or the value that occurs most frequently.
# What are the steps needed to solve the problem?
	#Step 1 - Find out if a value occurs more frequently than others within the array.
	#Step 2 - Find a way to print those values
	#Step 3 - If no value occurs more often than any other, print original array.
>>>>>>> 5.3


# 1. Initial Solution

<<<<<<< HEAD



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
=======
#def mode(arrays)
#freq = arrays.inject(Hash.new(0)) { |h,v| h[v] += 1; h } 
#puts arrays.max_by { |v|v == highest_freq} 
#highest_freq=freq.values.max
  
#puts arrays.max_by { |v|v == highest_freq }

 # puts arrays.select.max_by {|v| highest_freq[v]}
#end 

#mode([1,2,3,4,4,5,5])



# 3. Refactored Solution
def mode(arrays)
 freq = arrays.inject(Hash.new(0)) { |h,v| h[v] += 1; h } 
 highest_freq=freq.values.max
 mode_hash = freq.select {|key, value| value == highest_freq}
 mode_hash.keys
end

mode([1,2,3,4,4,5,5])



# 4. Reflection
=begin
1. Which data structure did you and your pair decide to implement and why?

	We decided to use both arrays and hashes. We needed to change the array into a hash so that we could determine which value occurred the most. 

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

	Technnically speaking you could say we were successful because in the end we were able to make the code run. 
	However it took us a very long time to finally solve the challenge as it was very difficult and was not easy. 

3. What issues/successes did you run into when translating your pseudocode to code?
	
	We overcomplicated when translating from the pseudocode to code. 

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	
	We used .keys to pull the keys we were looking for out of the hash and print to the console. 
=end


#puts mode([5, 6, 7, 7, 7, 8, 8, 8, 10, 10, 10, 15])
>>>>>>> 5.3
