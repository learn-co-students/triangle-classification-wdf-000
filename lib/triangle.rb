require 'pry'
class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def all_equal?
    @sides.uniq.size == 1 && @sides.uniq.first != 0
  end

  def two_sides_equal?
    @sides.uniq.size == 2 && no_negatives? && not_inequal?
  end

  def no_sides_equal?
    @sides.uniq.size == 3 && no_negatives? && not_inequal?
  end

  # should this include 0?
  def no_negatives?
    @sides.all? { |side| side > 0 }
  end

  def not_inequal?
    @sides.reduce(0, :+) - @sides.max > @sides.max
  end

  def kind
    if all_equal?
      :equilateral
    elsif two_sides_equal?
      :isosceles
    elsif no_sides_equal?
      :scalene
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end