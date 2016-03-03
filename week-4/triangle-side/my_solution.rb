
# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if (a == 0 || b == 0 || c == 0)
  	return false

  elsif ((a + b) > c) && ((a + c) > b) && ((b + c) > a)
  	return true
  	
  else
  	return false
end
end


valid_triangle?(0,0,0) 
valid_triangle?(1,1,1)
valid_triangle?(3,4,5) 
valid_triangle?(4,3,5)
valid_triangle?(5,3,4)
valid_triangle?(10, 10, 100)
