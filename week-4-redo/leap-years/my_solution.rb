# Leap Years

# I worked on this challenge [by myself, with: ].
# THe year can be evenly divided by 4;
# If the year can be evenly divided by 100, it is NOT a leap year, unless;
# The year is also evenly divisible by 400. Then it is a leap year.Th

# Your Solution Below

def leap_year?(year)
	if year % 4 == 0 && year % 100 != 0
		true
	elsif year % 400 == 0
		true
	elsif year % 4 == 0 && year % 100 == 0 && year % 400 != 0
		false
	else year % 4 != 0
		false
			
		
	end

end