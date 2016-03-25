// #####  Sample output:
//
// Welcome to your new castle!!
//
// This castle is quite wonderful with many awesome features and lots of potential. But
// unfortunately neighboring castles are suffering from various infestations of terrifying terrors
// like dragons, fawning ministers, and vicious library books! Oh no!
//
// Over the next 5 days, let's see if you survive life in your new castle. Every day, one new thing
// will be added to your castle. If it's a positive addition, you'll have to try to keep it by
// creating a happy home for it. But if it's a negative addition, you'll have to try and
// get rid of it!
//
// If at the end of the 5 days you have kept more positive additions than negative ones, you'll win!
// If not, you'll get rudely booted out of your castle, never to return!!
//
// Your castle is being built...
//
// Day 1...
// Oh no!! You've got children!!!
// You're fighting them off--who's winning??
// Oh no, looks like the children dug in! They're staying!!
//
// Day 2...
// You've got golden chalices of drinking!!! How great!
// Let's see if golden chalices of drinking like living in your castle...
// Looks like the golden chalices of drinking love it here! They're staying!!
//
// Day 3...
// You've got libraries!!! How great!
// Let's see if libraries like living in your castle...
// Oh no, the libraries don't like it in this castle! They're packing up and leaving!!
//
// Day 4...
// Oh no!! You've got overly adorable mice!!!
// You're fighting them off--who's winning??
// Oh no, looks like the overly adorable mice dug in! They're staying!!
//
// Day 5...
// You've got ladies!!! How great!
// Let's see if ladies like living in your castle...
// Looks like the ladies love it here! They're staying!!
//
// Yesss!! You've beaten the odds and now the castle is yours!
// Live happily in your castle with these lovely and not-so-lovely denizens:
// { good: [ 'golden chalices of drinking', 'ladies' ],
//   lessGood: [ 'children', 'overly adorable mice' ] }
//
// Thanks for playing the Castle Game :)

assets = {
  0: ["kitchen gardens", "courtyards", "stables"],
  1: ["libraries", "great halls", "armories"],
  2: ["knights", "ladies", "serfs"],
  3: ["golden chalices of drinking", "fluffy blankets of sleeping", "shiny rubies of coding"]
};

pests = {
  0: ["dragons", "gorgons", "flesh-eating newts"],
  1: ["children", "fleas", "overly adorable mice"],
  2: ["sucker-upers", "fawning ministers", "shrill-voiced minstrels"],
  3: ["brasseries of Great-Aunt Gwenyvere", "vicious library books", "two haunted squeaky suits of armor"]
};

results ={
  true: 0,
  false: 0
};

inventory = {good: [], lessGood: []}

function introduction() {
  console.log("\nWelcome to your new castle!!\n\nThis castle is quite wonderful with many awesome " + "features and lots of potential. But unfortunately neighboring castles are suffering " +
    "from various infestations of terrifying terrors like dragons, fawning ministers, and " +
    "vicious library books! Oh no!\n\nOver the next 5 days, let's see if you survive life in your " +"new castle. Every day, one new thing will be added to your castle. If it's a positive addition, " + "you'll have to try to keep it by creating a happy home for it. But if it's a negative " + "addition, you'll have to try and get rid of it!\n\n" + "If at the end of the 5 days you have kept more positive additions than negative ones, you'll " + "win! If not, you'll get rudely booted out of your castle, never to return!!\n\nYour castle is being built...\n\n");
}

function generateRandomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function generateMove() {
  var boolean;
  var goodOrBad = generateRandomNumber(0, 10);
  var location = generateRandomNumber(0, 3);
  var addition;

  if (goodOrBad % 2 === 0) {
    boolean = true;
    if (!(assets[location.toString()])) {
      location += 1
    }
    for (var set in assets) {
      if (set === location.toString()) {
        var x = assets[set].length;
        // console.log("set is " + assets[set] + ", x is " + x);
        var subset = generateRandomNumber(0, (x - 1));
        addition = assets[set][subset];
        assets[set].splice(subset, 1);
      }
    }
  } else {
    boolean = false;
    if (!(pests[location.toString()])) {
      location += 1
    }
    for (var item in pests) {
      if (item === location.toString()) {
        var y = pests[item].length;
        // console.log("set is " + pests[item] + ", y is " + y);
        var subitem = generateRandomNumber(0, (y - 1));
        addition = pests[item][subitem];
        pests[item].splice(subitem, 1);
      }
    }
  }
  return [addition, boolean];
}

function castleGame(array, i) {
      console.log("\nDay " + i + "...");
      if (array[1]) {
        console.log("You've got " + array[0] + "!!! How great!");
        console.log("Let's see if " + array[0] + " like living in your castle...");
        var stayOrLeave = ((generateRandomNumber(1, 10)) % 2 === 0);
        pausecomp(2000);
        if (stayOrLeave) {
          console.log("Looks like the " + array[0] + " love it here! They're staying!!");
          results.true += 1;
          inventory.good.push(array[0]);
        } else {
          console.log("Oh no, the " + array[0] + " don't like it in this castle! They're packing up and leaving!!");
        }
      } else {
        console.log("Oh no!! You've got " + array[0] + "!!!");
        console.log("You're fighting them off--who's winning??");
        var stayOrLeave = ((generateRandomNumber(1, 10)) % 2 === 0);
        pausecomp(2000);
        if (stayOrLeave) {
          console.log("Oh no, looks like the " + array[0] + " dug in! They're staying!!");
          results.false += 1;
          inventory.lessGood.push(array[0]);
        } else {
          console.log("Thank goodness, the " + array[0] + " don't like it in this castle! They're packing up and leaving!!");
        }
      }
}

function checkResults() {
  if (results[true] >= results[false]) {
    console.log("\nYesss!! You've beaten the odds and now the castle is yours!");
    console.log("Live happily in your castle with these lovely and not-so-lovely denizens:");
    console.log(inventory);
  } else {
    console.log("\nOh no! You've been overrun by pests! Leave now and never come back!");
    console.log("Your castle will have to figure out a way to live in peace with its denizens:");
    console.log(inventory);
  }

  console.log("\nThanks for playing the Castle Game :)");
}

function pausecomp(millis) {
 var date = new Date();
 var curDate = null;
 do { curDate = new Date(); }
 while(curDate-date < millis);
}

function runGame() {
  introduction();
   pausecomp(18000);
  for (var i=1; i < 6; i++) {
    var array = generateMove(assets, pests);
    castleGame(array, i);
    pausecomp(5000);
  }
  checkResults();
}

runGame();