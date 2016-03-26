
function sum(array){
	var total = 0;
	for (i = 0; i < array.length; i++){
		total += array[i];
	}
	return total;
}

function mean(array){
	var total = 0;
	for (i = 0; i <array.length; i++){
		total += array[i];
		average = total / array.length;
	}
	return average;
}

function median(array){
	var middle = array.length/2;
	var middle = Math.floor(middle);
	if (middle % 2 === 0){
		value = (array[middle - 1] + array[middle]) / 2;
		return value;
	}else if (middle % 2 !== 0){
		value = array[middle];
		return value;
	}

}

console.log(sum([1,4,100,99,101]))
console.log(mean([1,4,100,99,101]))
console.log(median([1,2,3,4,5]))