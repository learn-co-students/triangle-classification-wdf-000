class Triangle
  attr_reader :sides

  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    validate_triangle

    if sides[0] == sides[2]
      :equilateral
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end
  end

  private
  def validate_triangle
    raise TriangleError if sides[0] + sides[1] <= sides[2]
  end
end

class TriangleError < StandardError
end
