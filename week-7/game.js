/*
Pseudocode
This game puts the player against the dealer. There is a deck of single suited cards. The player draws first and the dealer draws second. Whomever has the higher card(ace's low) wins.

1. Print Welcome message and rules to console.
2. set variable cards = all cards available in an array
3. set player function. Iterate over array. Randomly choose 1. 
*/
console.log("Welcome to High Number! The rules of the game is simple. You and your opponent, the computer have a bag with 10 numbered balls in it. You pull a numbered ball out of your bag and so does the computer. If your numbered ball is higher than the computer's you win! If your number is equal of lesser than the computer's you lose! Good Luck!")
console.log("Pick a card...")

var ballNumber =[1,2,3,4,5,6,7,8,9,10]


console.log("You picked a...");

function yourBall(ballNumber){
	pausecomp(5000);

	console.log(ballNumber[i]);
}

console.log("The computer picked a...");

function dealerBall(ballNumber){
	pausecomp(5000);
	console.log(ballNumber[i]);
}
var yourBall =
var dealerBall =

function result(){
if yourBall > dealerBall console.log "Congrats, You won!"
	else console.log "Sorry, You lost"
};
