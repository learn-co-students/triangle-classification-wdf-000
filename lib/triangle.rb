require 'pry'
class Triangle
  attr_reader :a, :b, :c

  def initialize (side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
  end

  def valid?
    (@a > 0 && @b > 0 && @c > 0) && (@a + @b > @c && @a + @c > @b && @b + @c > @a)
  end

  def kind
  #  binding.pry
    if !valid?
        raise TriangleError
     else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "Invalid input. Cannot form a triangle with the given measurements."
  end
end
