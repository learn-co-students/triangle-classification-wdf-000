class Triangle
  attr_reader :sides

  def initialize(a, b, c)
    @sides = [a, b, c].sort #sides can be [s, m, l], [s, s, l], [s, l, l], [s, s, s]
  end

  def kind
    validate_triangle

    if sides[0] == sides[1] || sides[1] == sides[2] #[s, s, l], [s, l, l], [s, s, s]
      if sides[0] == sides[2] #[s, s, s]
        :equilateral
      else
        :isosceles
      end

    else #[s, m, l]
      :scalene
    end
  end

  private
  def validate_triangle
    raise TriangleError if sides[0] + sides[1] <= sides[2] # [0] & [1] are the smallest, so it also cover the zero and negative scenarios.
  end
end

class TriangleError < StandardError
end
