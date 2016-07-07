require "pry"

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def sides
    [side1, side2, side3]
  end

  def illegal?
    sum = side1 + side2 <= side3
    sum2 = side1 + side3 <= side2
    sum3 = side2 + side3 <= side1
    bad_sides = sides.any? { |side| side <= 0 }

    if sum || sum2 || sum3 || bad_sides
      true
    end
  end

  def is_scalene? # all different sides
    (side1 != side2) && (side2 != side3) && (side1 != side3)
  end

  def is_isosceles? # two equal sides
    (side1 == side2) || (side1 == side3) || (side2 == side3)
  end

  def is_equilateral? # all equal sides
    sides.all? { |side| side == side1 }
  end

  def kind
    if self.illegal?
      raise TriangleError
    elsif self.is_equilateral?
      :equilateral
    elsif self.is_scalene?
      :scalene
    elsif self.is_isosceles?
      :isosceles
    end
  end
end
# binding.pry

# Custom Error
class TriangleError < StandardError
end
