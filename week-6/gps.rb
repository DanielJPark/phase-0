# Your Names
# 1)Andrey Slonski  
# 2)Dan Park

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients) 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
    if library.include?(item_to_make) == false
      raise ArgumentError.new("#{item_to_make} is not a valid input") 
    end
   serving_size = library[item_to_make]
   remaining_ingredients = num_of_ingredients % serving_size
  
   suggested = ""
    if remaining_ingredients == 6
      suggested = " 1 cake and 1 cookie, or 6 cookies."
      elsif
      remaining_ingredients == 5
      suggested = " 1 cake, or 5 cookies. "
      elsif remaining_ingredients <= 4
      suggested = " #{remaining_ingredients} cookies."    
    end
        
    case remaining_ingredients  
      when 0
        return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
      else     
        return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested}"
    end
end

 p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
 p serving_size_calc("cake", 5)
 p serving_size_calc("cake", 7)
 p serving_size_calc("cookie", 1)
 p serving_size_calc("cookie", 10)
 p serving_size_calc("pasta", 5)
 p serving_size_calc("pie", 14)
 p serving_size_calc("cookie", 44)
 p serving_size_calc("pie", 13)



#  Reflection

=begin

What did you learn about making code readable by working on this challenge?

  One of thie things I have generally been struggling with when it comes to reading code is that at times it can look like "gibberish." I guess thats a fairly common issue for a lot of newbies. Anyways, making the code readable definitely helps clairfy to the reader what the code is trying to do. It also helps with future refactoring.

Did you learn any new methods? What did you learn about them?

  I learned how include? works as well as got more practice researching in ruby-docs.

What did you learn about accessing data in hashes?

  I learned/re-learned that calling on a key will return its value. I'm realizing how much I forgot from the codecademy lessons I did earlier this year.

What concepts were solidified when working through this challenge?

  More than just solidified, I feel that the "light-switch" of understanding Ruby is just starting to go off for me. I was fortunate to have an excellent pair in this session who really helped explain a lot of things for me. I have a better understanding of how ArguementError works.

=end









