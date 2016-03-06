# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  min = nil
  list_of_words.each do |word|
  	if min.nil? || min.length > word.length
  		min = word
  	end
  end
  return min
end


# 'cat' is 3 characters long
shortest_string(['cat', 'zzzzzzz', 'apples'])  # => "cat"

# '' is 0 characters long, but it's the only string
shortest_string(['']) # => ''

shortest_string([]) # => nil