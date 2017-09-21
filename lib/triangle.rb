class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
  	@a = a
  	@b = b
  	@c = c
  end

  def kind
  	if self.valid?
  		if self.a == self.b && self.b == self.c
			:equilateral
		elsif self.a == self.b || self.b == self.c || self.a == self.c
			:isosceles
		else
			:scalene
		end
	else
		raise TriangleError
	end
  end

  def valid?
  	sum1 = self.a + self.b
  	sum2 = self.b + self.c
  	sum3 = self.a + self.c
  	if (self.a > 0 && self.b > 0 && self.c >0) && (sum1 >self.c && sum2 > self.a && sum3 > self.b)
  		true
  	else
  		false
  	end
  end


end

class TriangleError < StandardError
	# triangle error code
end