# Calculate a Grade


# I worked on this challenge [by myself, with: Jon Kaplan].


# Your Solution Below

def get_grade(grade)
	if grade.to_i >= 90
		return "A"
	elsif grade.to_i >= 80
		return "B"
	elsif grade.to_i >= 70
		return "C"
	elsif grade.to_i >= 60
		return "D"
	elsif grade.to_i < 60
		return "F"
end
end
get_grade(91)
get_grade(88)
get_grade(74)
get_grade(66)
get_grade(40)