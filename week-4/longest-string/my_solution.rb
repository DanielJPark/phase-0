# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  max = nil
  list_of_words.each do |word|
  	if max.nil? || max.length < word.length
  		max = word
  	end
  end
  return max
end

# 'zzzzzzz' is 7 characters long
longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"
