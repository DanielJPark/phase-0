# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

#Pseudocode
#Input: array, string
#Iterate through the array and check to see if it includes the string
#Assign it to a new array
#Return new array

def my_array_finding_method(source, thing_to_find)
  new_array = source.select do |element|
    element.to_s.include? thing_to_find
  end
  return new_array
end

#Pseudocode
#Input: hash, variable
#Iterate through the hash keys and values
#If the value is equal to the variable we are looking for, return key
#Return new array

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.map do |k, v|
    if v == thing_to_find
      new_array << k
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
# I used the select method which returns an array containing all elements of enum for which teh given block returns are true value.
# I also used the include? method which returns true if any member of enum equals the object, in this case thing_to_find.
# I also used map method which goes through each item in the object and alters the original value.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Explaining the methods I used reinforced my understanding on what they do. 
# Its one thing to be able to find the method and use it. 
# Its another to have to actually explain what it does and show how it works.
#
#
#