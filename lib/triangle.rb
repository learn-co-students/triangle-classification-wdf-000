class Triangle
  # write code here
  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
  	@first_side, @second_side, @third_side = first_side, second_side, third_side
 
  end

  def kind
  	check_error
  	# knows that equilateral triangles have equal sides
  	if first_side == second_side && second_side == third_side
  		 :equilateral
  	elsif first_side == second_side || second_side == third_side || first_side == third_side
  		 :isosceles
  	else
  		:scalene
  	end
  end

  def check_error
  
  	if first_side == 0 || second_side == 0 || third_side == 0

  		raise TriangleError
  	elsif first_side + second_side <= third_side || second_side + third_side <= first_side || third_side + first_side <= second_side
  		raise TriangleError
  	end
  		
  end


end



  class TriangleError < StandardError
 # triangle error code
  end

