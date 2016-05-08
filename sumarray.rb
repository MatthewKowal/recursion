class Array 
	def sum  #recursively sums the elements of an array 
				#unfortunately this deletes all elements of self
		result = self.shift
		self.length != 0 ? result += self.sum : result
	end
end

#example
array = [1,2,3,4,5,6,7,8,9]
p array.sum

