def smallestNumber(array)
	
	smallest = array[0]
	i=0 
	
	while i < array.length
	
		if smallest > array[i]
		smallest = array[i]
		end
	
		i=i+1
	end
	
	print smallest
end