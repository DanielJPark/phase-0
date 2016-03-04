puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello #{first_name} #{middle_name} #{last_name}"


puts "What is your favorite number?"
favorite_number = gets.chomp.to_i
better_number = favorite_number+1
puts "#{better_number} is a bigger and better number!"



=begin
How do you define a local variable?

	variable name = input
	
How do you define a method?
	
	def(x)
		line of code that manipulates the variable in this case x
	end


What is the difference between a local variable and a method?

	A Method is a line of code that uses variables in order to accomplish a task or product an output.
	A variable is data that is put into a container for easy retrival. 

How do you run a ruby program from the command line?

	while in the same directory type ruby filename

How do you run an RSpec file from the command line?

	while in the same directory type rspec filename

What was confusing about this material? What made sense?

	The hardest part for me was remembering the syntax of everything.
	Its been a few weeks since I've seen Ruby and before that I never even heard of it so it was difficult to get back into the flow of it all.
	However it was like riding a bike. Once I got some momentum going, I felt like it started coming back.

=end