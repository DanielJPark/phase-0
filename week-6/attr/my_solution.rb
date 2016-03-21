#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	
	def initialize(name)
		@name = name
	end
end


class Greetings
	attr_reader :person

	def initialize(name = "person")
	@person = NameData.new(name)
	end

	def hello
		p "Hola, #{@person.name}. Como estas, amigo?"
	end

end

new_greeting = Greetings.new
p new_greeting
new_greeting.hello

greet_dan = Greetings.new("Dan")
p greet_dan
greet_dan.hello

# Reflection

=begin
	
Release 1
What are these methods doing?
initialize - sets the age, name and occupation
print_info - prints age, name and occupation to the console
what_is_age - returns @age
change_my_age - sets a new @age
what_is_name - returns @name
change_my_name - sets a new @name
what_is_occupation - returns @occupation
change_my_occupation - sets a new @occupation

How are they modifying or returning the value of instance variables?

The what_is methods return the info that is already set.
the change_my methods are updating that same info with new values.

Releast 2
What changed between the last release and this release?
attr_reader: age was added to the class
what_is_age method was removed.

What was replaced?
what_is_age was replaced with attr_reader :age

Is the code simpler than the last?
Yes. Less written code. More efficient and easier to read.

Release 3
What changed between the last release and this release?
attr_writer: age was added to the class.
change_may_age was removed.

What was replaced?
change_my_age was replaced with attr_writer :age

Is this code simpler than the last?
Yes. Less written code. More efficient and easier to read.


Release 4
What changed between the last release and this release?
attr_accessor: age was added to the class.
attr_reader: age and attr_writer: age was removed.

What was replaced?
attr_accessor: age replace bother reader and writer

Is this code simpler than the last?
Yes. Less written code. More efficient and easier to read.


Release 6

 	What is a reader method?
It allows you to return the value of an instance variable outside the class.

 	What is a writer method?
It allows you to change the value of an instance variable outside the class.	
 	
 	What do the attr methods do for you?
It declares the reader and writer methods.
	
 	Should you always use an accessor to cover your bases? Why or why not?
No, because sometimes you dont want to give that much access to the data. It can also cause debugging issues. 

 	What is confusing to you about these methods?
Honestly I didnt find this to be that confusing. Maybe the hardest part for me was initially setting things up.

=end