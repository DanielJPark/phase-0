
var sum = function(array){
	total = 0;
	for (i = 0; i < array.length; i++){
		total += array[i];
	}
	return total;
}

var mean = function(array){
	total = 0;
	for (i = 0; i < array.length; i++){
		total += array[i];
		average = total / array.length;
	}
	return average;
}


var median = function(array){
	middle = array.length / 2;
	middle = Math.floor(middle);
	if (middle % 2 === 0){
		value = (array[middle - 1] + array[middle]) / 2;
		return value;
	}else if (middle % 2 !== 0) {
		value = array[middle];
		return value;
	}
}

console.log(sum([1,4,99,100,101]))
console.log(mean([1,4,99,100,101]))
console.log(median([1,4,99,100,101]))