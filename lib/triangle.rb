
class Triangle
  attr_reader :a , :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def err
    lengths = [a, b, c].sort
    raise TriangleError if (a <= 0 || b <= 0 || c <= 0) || lengths[0] + lengths[1] <= lengths[2]
  end
 
  def kind
    err
      if c == b && b == a
        return :equilateral
      elsif a == c  || b == c || a == b
        return :isosceles
      else
        return :scalene
      end
  end
end

class TriangleError < StandardError

end
