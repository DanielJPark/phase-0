# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? any integer
# What is the output? (i.e. What should the code return?) a string with comma entered after every 3rd character from right to left.
# What are the steps needed to solve the problem?

=begin
	
input variable should be an integer



if the integer is greater than 999 and equal to or less than 999,999 convert to string.
	reverse the order of the characters of the string
	split the characters of the string into individual strings
	insert a "," after the 3rd string 
	combine each string into 1 string
	reverse the string
	return the string



elsif the interger is greater than 1,000,000 and less than 999,999,999
	reverse the order of the characters of the string
	split the characters of the string into individual strings
	
	insert a "," after the 3rd string
	insert a "," after the 7th string
	combine each string into 1 string
	reverse the string
	return the string

else the integer is equal to or less than 999 convert to string and return

=end

# 1. Initial Solution

def separate_comma(integer)
	
	if integer > 999 && integer <= 999999 #set the range of integer in thousands
		les_than_mil_more_than_thous = integer.to_s.reverse! #convert the integer to string and reverse the order
		split = les_than_mil_more_than_thous.split(//) #split the integer into invidual strings
		comma_for_thous = split.insert(3, ",") #insert a comma after the 3rd string
		updated= comma_for_thous.reverse!.join("") #reverse the other of the strings and join them into one string

		puts updated #return the updated string

	elsif integer > 999999 #set the range of integer in millions
		more_than_mil = integer.to_s.reverse! #convert the integer to string and reverse the order
		split = more_than_mil.split(//) #split the integer into invidual strings
		comma_for_thous = split.insert(3,",") #insert a comma after the 3rd string
		comma_for_mil = comma_for_thous.insert(7,",") #insert a comma after the 7th string
		updated = comma_for_mil.reverse!.join("") #reverse the other of the strings and join them into one string

		puts updated #return the updated string
	
	else integer <= 999
		puts integer.to_s
	
	end

end

separate_comma(1)
separate_comma(12)
separate_comma(123)
separate_comma(1234)
separate_comma(12345)
separate_comma(123456)
separate_comma(1234567)

# 2. Refactored Solution

def separate_comma2(integer)
	integer_to_string = integer.to_s
	split = integer_to_string.split(//)
	split.reverse!
	comma_for_thous = split.insert(3, ",")
	
	

    if integer > 999 && integer <= 999999
		updated = comma_for_thous.reverse!.join("")
		puts updated

	elsif integer > 999999 
     	comma_for_mil = split.insert(7, ",")
   	 	updated = comma_for_mil.reverse!.join("")
   	 	puts updated
    
	else integer <= 999
    	puts integer_to_string

    
    	
    end
end


separate_comma2(1)
separate_comma2(21)
separate_comma2(321)
separate_comma2(4321)
separate_comma2(54321)
separate_comma2(654321)
separate_comma2(7654321)


# 3. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?

	First I looked at the task and thought about when I would need to add a comma.
	Then I realized that with numbers 999 and below I didnt need to do anything except turn the integer into a string.
	With numbers in the thousands and realized I only needed to add one comma, however I knew that I needed to count from right to left so to remedy that problem I reverse the characters of the string and then inserted a comma after the 3rd character.
	I did the same for numbers in the millions only this time I recognized that the "," was now a character in the string so I made sure it would be added after the 7th added instead of the 6th.
	I then reversed the characters back to the original order and printed it to the console.

	Originally I thought about splitting the characters of the string and creating an array with it, then adding commas between the elements.
	I decided not to go that route because I personally felt that it would be more complicated to write the code that way, although in hindsight I see that maybe it would have been a better way to go due to the fact that my code will only add commas to integers up to 999,999,999.
	



Was your pseudocode effective in helping you build a successful initial solution?

	Yes, It helped to set up a "game plan" to how I was going to attack this challenge.


What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

	To be honest I didnt really use any "new" methods. I just reorganized my original code to be more efficient. I need to do a better job of researching the built in ruby methods.

How did you initially iterate through the data structure?

	I tried to elminate code that I repeated to make things more efficient.

Do you feel your refactored solution is more readable than your initial solution? Why?

	Honestly its about the same.

=end