// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 5;
var numbertostring = number.toString();
console.log(numbertostring + " is five in string format.");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// triangle
/*
var hashtag = "#";
for (var counter = 1; counter <=7; counter++){
	console.log(hashtag);
	(hashtag = hashtag+"#");
}
*/
var hashtag = "#"
var i = 0
while (i <= 7){
	console.log(hashtag);
	hashtag = hashtag+"#";
	i++;
}

	
function fizzBuzz(max_number){
 for (var i = 1; i <= max_number; i++) {
 	if ((i % 5 === 0) && (i % 3 === 0)) {
  	console.log("FizzBuzz")
  }
  else if (i % 5 === 0) {
  	console.log("Buzz")
  }
  else if (i % 3 === 0) {
  	console.log("Fizz")
  }
  else {
  	console.log(i)
  }
 }
}


fizzBuzz(15)

//refactored 

def fizzbuzz(max) 
  (1..max).to_a.each do |item|
    x = ""
    x << "Fizz" if item % 3 == 0
    x << "Buzz" if item % 5 == 0
    x = item if x.empty?
    puts x
  end
end


// Functions
// Complete the `minimum` exercise.

function min(num1, num2){
	if (num1 < num2) {
		return num1;
	}
	else {
		return num2;
	}
}

console.log(min(5,3));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
name: "Danny",
age: 36,
food: ["noodles", "steak", "wings" ],
quirk: "comic book buff",
}

console.log(me.name)

/*
Reflection
Introduction (Links to an external site.)
Did you learn anything new about JavaScript or programming in general?
Are there any concepts you feel uncomfortable with?


Ch. 1: Values, Types, and Operators (Links to an external site.)
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

  Similaries - Strings and Operators work the same. 
  Differences - Variables require Var, Ruby uses methods while JS uses Functions. Ruby uses end statement while JS uses {}

Ch. 2: Program Structure (Links to an external site.)
What is an expression?
    Something that makes a value.

What is the purpose of semicolons in JavaScript? Are they always required?
    Declares the end of expressions.
    Usually but not always.

What causes a variable to return undefined?
    It the arithmatic is undefined. ie dividing something by 0.

Write your own variable and do something to it in the eloquent.js file.

 See above.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?

  It is like puts. It displays things to the console.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

 See above.


Describe while and for loops

  While loops
    Take place when a specific condition is met.

  For loops
    Tale place with specific input. 

What other similarities or differences between Ruby and JavaScript did you notice in this section?
  
    Theres a lot of similarities like if else statements.


Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

  See above.

Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)

What are the differences between local and global variables in JavaScript?

  local - called within the variable
  global - called outside the variable

When should you use functions?

  when you want the do something.

What is a function declaration?

  function

Complete the minimum exercise in the eloquent.js file.

  See above.

Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
What is a JavaScript object with a name and value property similar to in Ruby?

  the dot calles an object within the array.



*/










