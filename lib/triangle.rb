class Triangle

  attr_reader :a, :b, :c 

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
   if a == b && b == c
      return :equilateral
   elsif a == b || a == c || c == b
      return :isosceles    
   else  
      return :scalene
    end
  end


  def validate
    if c >= (a + b) || a >= (b + c) || b >= (a + c)
      raise TriangleError
    elsif a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end
  end  

end


class TriangleError < StandardError
end