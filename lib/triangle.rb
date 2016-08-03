class Triangle
  # write code here
  attr_accessor :los1, :los2, :los3

  def initialize(los1, los2, los3)
  	@los1 = los1
  	@los2 = los2
  	@los3 = los3
  end

  def kind
  	if self.valid?
  		if self.los1 == self.los2 && self.los2 == self.los3
			:equilateral
		elsif self.los1 == self.los2 || self.los2 == self.los3 || self.los1 == self.los3
			:isosceles
		else
			:scalene
		end
	else
		raise TriangleError
	end
  end

  def valid?
  	sum1 = self.los1 + self.los2
  	sum2 = self.los2 + self.los3
  	sum3 = self.los1 + self.los3
  	if (self.los1 > 0 && self.los2 > 0 && self.los3 >0) && (sum1 >self.los3 && sum2 > self.los1 && sum3 > self.los2)
  		true
  	else
  		false
  	end
  end


end

class TriangleError < StandardError
	# triangle error code
end