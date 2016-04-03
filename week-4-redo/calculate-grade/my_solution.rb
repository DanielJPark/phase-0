# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(average)
  if average.to_i >= 90
    "A"
  elsif average.to_i >= 80
    "B"
  elsif average.to_i >= 70
    "C"
  elsif average.to_i >= 60
    "D"
  else
    "F"
  end
end

puts get_grade(92)