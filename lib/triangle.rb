class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    # elsif a**2 + c**2 < b**2
    #   raise TriangleError
    # elsif b**2 + c**2 < a**2
    #   raise TriangleError
    elsif a == b && b == c
      return :equilateral
    elsif (a == b && b != c) || (a != b && b == c) || (a != b && a == c)
      return :isosceles
    elsif a != b && b != c && a != c
      return :scalene

    end

  end

end

class TriangleError < StandardError
end