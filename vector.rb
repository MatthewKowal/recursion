class Array
	def sum #unfortunately this deletes all elements of self
		result = self.shift
		self.length != 0 ? result += self.sum : result
	end
end

class Vector #a vector has a magnitude and direction (in radians),
				 #from that we can compute the x and y components

	attr_accessor :magnitude, :radians, :x, :y

	def initialize(mag=0.0, rad=0.0)
		self.magnitude = mag
		self.radians = rad
		self.x = mag*Math.cos(rad)
		self.y = mag*Math.sin(rad)
	end


	def report_stats 
		puts self.magnitude
		puts self.radians
	end

	def + (vector2) #newtonian interpretation of vector addition
		x = self.magnitude*Math.cos(self.radians) + vector2.magnitude*Math.cos(vector2.radians)
		y = self.magnitude*Math.sin(self.radians) + vector2.magnitude*Math.sin(vector2.radians)
		r = Math.atan2(y, x)
		m = Math.sqrt(x**2 + y**2)
		Vector.new(m, r)
	end
end

#define some random vectors (magnitude, direction(radians))
vector1 = Vector.new(10.5 ,  Math::PI)
vector2 = Vector.new(15.7 ,  0.0)
vector3 = Vector.new( 1.40, -0.7)
vector4 = Vector.new( 3.14, -0.4)
vector5 = Vector.new(28.0 ,  0.9)

					  
puts "\n----test summing multiple vectors----"
(vector1 + vector2 + vector3 + vector4 + vector5).report_stats

puts "\n----test recursively adding an array of vectors----"
v_array = [vector1, vector2, vector3, vector4, vector5]
v_array.sum.report_stats

puts "\n"






