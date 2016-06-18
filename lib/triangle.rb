class Triangle
  # write code here
  attr_reader :kind

  def initialize(a,b,c)
    if a + b <= c or a + c <= b or b + c <= a or [a,b,c].any?{|x| x <= 0}
      raise TriangleError
    elsif a != b and a != c and b != c
      @kind = :scalene
    elsif a == b and a == c and b == c
      @kind = :equilateral
    else
      @kind = :isosceles
    end
  end
end

class TriangleError < StandardError
end
