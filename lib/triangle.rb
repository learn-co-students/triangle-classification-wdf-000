require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end


  def kind
    sides = @side_a, @side_b, @side_c
    add_error
    if @side_a == @side_b && @side_b == @side_c && @side_a == @side_c
      return :equilateral
    elsif @side_a != @side_b && @side_b != @side_c && @side_a != @side_c
      return :scalene
    else
     return :isosceles
    end
  end

  def add_error
    sides = @side_a, @side_b, @side_c
    if sides.any? == 0
      raise TriangleError
    elsif
      @side_a + @side_b <= @side_c || @side_b + @side_c <= @side_a ||
      @side_a + @side_c <= @side_b
      raise TriangleError
    end
  end

end




class TriangleError < StandardError
end
