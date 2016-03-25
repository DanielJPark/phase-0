var array = [44,7,5,2,8,1,88,55]

function smallestNumber(array) {
	var smallest = array[0];
  for (var i = 0; i < array.length; i++) {
  	if (smallest > array[i]) {
    	smallest = array[i];
    }
  } 
  console.log(smallest);
}

smallestNumber(array);