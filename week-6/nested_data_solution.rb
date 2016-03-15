# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
#hash = {:outer => {:inner => {"almost" => {3 => "congrats!"}}}}
# attempts: 2
# ============================================================
#p hash[outer][inner]["almost"][3]
p hash[:outer][:inner]["almost"][3]
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

new_array = number_array.map do |group| 
  if group.is_a?(Fixnum)
    group = group + 5
  else 
    group = group.map{|item| item = item + 5}
  end
end

p new_array 
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#"bit Bonus", "find Bonus"

updated_startup = startup_names.map do |names|
  if names.is_a?(String)
    names = names + " Bonus"
  else
    names = names.map do |secondary_names|
      if secondary_names.is_a?(String)
        secondary_names = secondary_names + " Bonus x 2"
      else
        secondary_names = secondary_names.map do |third_names|
          if third_names.is_a?(String)
            third_names = third_names + " Bonus x 3"
          end
        end
      end
    end
  end
end

        
p updated_startup