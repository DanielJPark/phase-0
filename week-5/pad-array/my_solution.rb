# Pad an Array

# I worked on this challenge [by myself, with: Mila Arinich ]

# I spent [5+] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

    #An array, minimum size as an integer, optional argument of any data type.

# What is the output? (i.e. What should the code return?)

    #An array with updated information.

# What are the steps needed to solve the problem?

    #For Destructive Method
    #Determine the number of elements in the initial array method count.
    #Assign a variable array_size to the number of elements in the array.
    #compare the variable array_size with the min_size.
    #if variable array_size is less than minimum size add optional argument(s) into array, return new array.
    #else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
    #return new array.
    #


    #For Non-Destructive Method
    #Determine the number of elements in the initial array method count.
    #Assign a variable array_size to the number of elements in the array.
    #compare the variable array_size with the min_size.
    #if variable array_size is less than minimum size add optional argument(s) into array, return new array.
    #else variable array_size is equal to minimum size or the minimum size equals 0, return the initial array.
    #return new array.
    

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size && value == nil
    until array.length == min_size 
    array.push(nil)
    end
      if array.length < min_size && value
        until array.length == min_size 
              array.push(value)
        end
      end

      if array.length >= min_size || min_size == 0
        return array 
      end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  my_array = []
  array.each { |x| my_array.push(x) }
  
  if my_array.length < min_size && value == nil
    until my_array.length == min_size
      my_array.push(nil)
    end
  end

  if my_array.length < min_size && value
    until my_array.length == min_size 
      my_array.push(value)
    end
  end 
     
  if my_array.length >= min_size or min_size == 0
    return my_array 
  end
     
    return my_array
  end
end

   pad([1,2,3], 5)

   pad!([1,2,3], 5)


# 3. Refactored Solution




# 4. Reflection
=begin
  1. Were you successful in breaking the problem down into small steps?
      
        Yes. This was probably the easiest part of this challenge.

  2. Was your initial solution successul at passing the tests? If so, why do you think this is?
  If not, what were the errors you encountered and what did you do to resolve them?

        No, I was not able to get the code to pass all tests. At one point I was able to get my code to pass 5 out of 9.
        This challenge was incredibly difficult for me. To be completely honest I am not sure what works and what doesn't
        I am still struggling to get a good grasp on how many of these commants works.
        I have reached out of co-hort mates as well as office hours and I am still very confused.

  3. When you refactored, did you find any existing methods in Ruby to clean up your code?

        To be honest we spent a tremendous amount of time on this challenge and didnt spend much time refactoring. 
        We spent the majority of time trying to get the code to run/work correctly.        

  4. How readable is your solution? Did you and your pair choose descriptive variable names?

        Our variable names are pretty simple and to the point. They are semi-descriptive of thier contents and easy to understand.

  5. What is the difference between destructive and non-destructive methods in your own words?
        
        Destructive methods change the object by creating a completely new object, 
        where as non-destructive methods make temporary changes.

=end
