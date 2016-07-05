require 'pry'
class Triangle
  attr_reader :a , :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def err
    lengths = [a, b, c].sort
    if  (a == 0 || b == 0 || c == 0) || (a < 0 || b < 0 || c < 0)
      raise TriangleError
    elsif lengths[0] + lengths[1] <= lengths[2]
      raise TriangleError
    end
  end
 
  def kind
    err
      if c == b && b == a
        return :equilateral
      elsif a == c  || b == c || a == b
        return :isosceles
      elsif c != b && b != a && a != c
        return :scalene
      end
    
  end




end


class TriangleError < StandardError
end