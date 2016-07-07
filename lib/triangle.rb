class Triangle
  def initialize(a,b,c)
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end
    @dimensions = [a, b, c]
  end
  def kind
    if @dimensions.count(@dimensions[0]) == 3
      @kind = :equilateral
    elsif @dimensions.count(@dimensions[0]) == 2 || @dimensions.count(@dimensions[1]) == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end 
  end
end

class TriangleError < StandardError

end
