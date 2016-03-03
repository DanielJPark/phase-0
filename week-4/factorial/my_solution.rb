# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  (1..number).inject {|product, number| product * number}
end 	


factorial(10)
factorial(20)
factorial(1000)


