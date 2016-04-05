# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
 # => “InVeStIgAtIoN”

puts "zom".sub("zom", "zoom")
puts "zom".gsub("o", "oo")
 # => “zoom”

puts "enhance".center(15)
 # => "    enhance    "

puts "Stop! You’re under arrest!".upcase
 # => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat " suspects"
puts "the usual" + " suspects"
puts "the usual" << " suspects"
puts "the usual".sub("usual", "usual suspects")
puts "the usual".gsub("usual", "usual suspects")

 #=> "the usual suspects"

puts " suspects".rjust(12,"the usual")
# # => "the usual suspects"

puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".chop
# # => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice(1..38)
puts "The mystery of the missing first letter".delete("T")

# # => "he mystery of the missing first letter"
puts  "Elementary,    my   dear        Watson!".split.join(" ")
puts  "Elementary,    my   dear        Watson!".squeeze
puts  "Elementary,    my   dear        Watson!".

# # => "Elementary, my dear Watson!"

puts "z".codepoints
# => 122 

# (What is the significance of the number 122 in relation to the character z?)
#122 is the codepoint of "z"

puts "How many times does the letter 'a' appear in this string?".count("a")
# # => 4
