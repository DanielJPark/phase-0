// JavaScript Olympics

// I paired [by myself, with: Christyn Budzyna] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up
/* Pseudocode
create an array of hashes called athletes
the key values of the hashes should be an athlete and thier event.
create a while loop with a counter that = 0, while i < length of the array.
Create a new key "win" = console.log message
do i++

create a function winnerEvent

*/

function winnerEvent(array){
	var i = 0; 
	while (i < array.length){
		array[i].win = (array[i].name + " wins in " + array[i].sport+"!");
		i++;
	} 
		

}

var athletes = [{"name": "Sarah Hughes", "sport": "skating"},{"name": "Michael Jordan","sport":"Basketball"},{"name":"Michael Phelps","sport":"Swimming"} ]

winnerEvent(athletes)
console.log(athletes)


// Jumble your words

function wordFlip(word){
	var flipped = word.split("").reverse().join("")

console.log(flipped)
}

wordFlip("Nice to meet you!")


// 2,4,6,8

function evenNumbers(array){
	var newArray = [];
	for (var i = 0; i<array.length; i++){
		if (array[i] % 2 == 0){
			newArray.push(array[i]);
		}

	}

console.log(newArray)
}


var randomNumbers = [2,4,6,3,67,7,100,12,23,16,87,5,33,56,7,26]

evenNumbers(randomNumbers)
// "We built this city"

function Athlete(name,age,sport,quote){
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;

}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
	I feel I solidified a lot of js syntax as well as functions.

What are constructor functions?
	Constructor is used to create objects with certain properties.

How are constructors different from Ruby classes (in your research)?
	Constructors are not available to all objects and requires a "prototype" to be created to be availabe to all objects.


*/

