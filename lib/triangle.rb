class Triangle
	def initialize ( a,b,c)
		@a = a
		@b = b
		@c = c
	end
	def kind
		if ( @a + @b > @c && @b + @c > @a && @a + @c > @b )
			if ( @a == @b && @b == @c )
				return :equilateral
			elsif ( @a == @b || @a == @c || @b == @c )
				return :isosceles
			else
				return :scalene
			end
		else
			raise TriangleError
			#begin 
			#	raise TriangleError
			#rescue TriangleError => error
			#	error.message
			#end
		end
	end

end

class TriangleError < StandardError
	#def message
	#	"Some error"
	#end
end
