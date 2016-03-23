// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/*

step 1 set function = to separateComma(number)
step 2 turn number into a string then split into an array
step 3 set variable length_number = to number length
step 4 reverse items in array
step 5 create a for loop with counter_variable starting at 3 
	and stopping at length_number and increases by 4 every loop.
step 6 insert the string "," at counter_variable
step 7 length_number + 1 every loop.
step 8 reverse updated array and join into 1 string
step 9 log the string.

*/

// Initial Solution
/*
function separateComma(number){
	var length_number = number.toString().length
	var number_array = number.toString().split("").reverse()

	for (var counter_variable=3; counter_variable < length_number; counter_variable = counter_variable+4){
		number_array.splice(counter_variable, 0, ",")
		length_number++
	}
	
	console.log(number_array.reverse().join(""));


}

separateComma(1234554545454)

*/

// Refactored Solution

function separateComma(number){
 var length_number = number.toString().length;
 var number_array = number.toString().split("");

 for (var counter_variable = 3; counter_variable < length_number; counter_variable += 4){
 	number_array.splice(-counter_variable, 0, ",");
 	length_number++;
 }
 console.log(number_array.join(""));
}



// Your Own Tests (OPTIONAL)

separateComma(123)
separateComma(1234)
separateComma(1234567)
separateComma(1234567890)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	Not really. My pseudocode was pretty much the same as if I were writing the code in Ruby.

What did you learn about iterating over arrays in JavaScript?
	Using {}, how each var needs to be declared, how functions need to end with () regardless of whether they need parameters or not.

What was different about solving this problem in JavaScript?

	The syntax has many similarities and differences. In ruby to_s where as in Javascript toString()

What built-in methods did you find to incorporate in your refactored solution?

	We used .splice to insert the commas.


*/













