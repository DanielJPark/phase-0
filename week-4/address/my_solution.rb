# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def make_address(street, city, state, zip)
	return "You live at " + street.to_s + ", in the beautiful city of " + city.to_s + ", " + state.to_s + ". Your zip is " + zip.to_s + "."
	
end

make_address("633 Folsom St.", "San Francisco", "CA", "94107")