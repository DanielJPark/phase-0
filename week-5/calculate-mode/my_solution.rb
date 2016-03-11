
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Elizabeth Alexander  ]

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? The input is an array. 
# What is the output? The output will either be the original array, or whichever value from the array occurs the most often. 
# What are the steps needed to solve the problem? First, you need to figure out whether or not a value does occur more often then other numbers in the array. If so, you must find a way to print those values out. If not, you must simply print out the original array. 

# 1. Initial Solution


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
  puts mode_hash.keys
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
