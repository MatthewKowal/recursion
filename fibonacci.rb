def fib(num) #find the first 'num' elements of fibonacci sequence
	array = [0,1]
	num.times do |i|
		array[i+1] = (array[i-1] + array[i])
	end
	array
end

def fibRec(num) #(recursive) find the 'num'th element of fibonacci sequence
	array = [0,1]
	array[num] = 	fibRec(num-2) + fibRec(num-1) if num >= 1
	array[num]
end


#sample code
p fib(10)     #outputs an array of the first 10 elements
p fibRec(10)  #outputs the 10th element
