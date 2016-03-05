# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#     errors.rb
# 2. What is the line number where the error occurs?
#     line 170
# 3. What is the type of error message?
#     syntax error
# 4. What additional information does the interpreter provide about this type of error?
#     The console says unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#     The console says the error is on line 170 at the bottom of the file because of the missing end to close the while statement.
# 6. Why did the interpreter give you this error?
#     Because the while statement in the method was not ended.
# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#     line 34
# 2. What is the type of error message?
#     NameError
# 3. What additional information does the interpreter provide about this type of error?
#     Undefinied local variable or methoid 'south_park' for main:Object
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because south_park is supposed to be a variable however it is not assigned a value.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#    line 49
# 2. What is the type of error message?
#    NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because the method cartman is being called however no method exists by that name.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    line 64
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    'cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because the method cartmans_phrase does not need a variable however 'I hate Kyle' is given.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#     line 87
# 2. What is the type of error message?
#     ArguementError
# 3. What additional information does the interpreter provide about this type of error?
#     Wrong number of arguements
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because the method asks for a variable, however none are given.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    line 108
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    Arong number of arguements (1 for 2)
# 4. Where is the error in the code?
#    The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#    Because the method asks for 2 variables and only 1 is given.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    line 123
# 2. What is the type of error message?
#     TypeError
# 3. What additional information does the interpreter provide about this type of error?
#     String can't be coerced into Fixum
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because "Respect my autoritay" is a string not an integer or float, therefore it cannot be multiplied by 5.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#     Line 138
# 2. What is the type of error message?
#     ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#     divided by zero
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because the variable asks to divide 20 by 0. It is impossible to divide anything by 0 which is considered undefined in mathematics.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    line 154
# 2. What is the type of error message?
#     LoadError
# 3. What additional information does the interpreter provide about this type of error?
#     cannot load such file --
# 4. Where is the error in the code?
#     The console does not say where the error is.
# 5. Why did the interpreter give you this error?
#     Because the requested file does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
	
Which error was the most difficult to read?

	I think reading the errors were all pretty similar. 
	To be honest seeing all the text jargon can be a bit hard on my eyes making them difficult to read.


How did you figure out what the issue with the error was?

    At the end of the first line the error is reported has the error name in ().

Were you able to determine why each error message happened based on the code?

    Yes. By reading the information provided and then looking for the specific code itself. 
    When looking at the code itself I was usually able to figure out the problem.

When you encounter errors in your future code, what process will you follow to help you debug?

	First I will read the entire error.
	Then I will figure out the error type.
	Then go to the line in the code and analyze the code itself to make see what needs to be corrected.
	Then I will make adjustments to fix the errors.

=end