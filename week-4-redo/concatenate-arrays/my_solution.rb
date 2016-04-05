# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat1(array_1, array_2)
  # Your code here
  array_3 = []
  array_1.each do |number|
  	array_3 << number
	end
	array_2.each do |new_number|
		array_3 << new_number
	end
	puts array_3
end

array_concat1([1,2,3],["cat",5,6])


def array_concat(array_1, array_2)
 	array_1 + array_2
end

puts array_concat([1,2,3], [4,5,6])