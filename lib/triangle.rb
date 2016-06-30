class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    array = [@side1.to_f, @side2.to_f, @side3.to_f].sort
    if array[2] - array[1] - array[0] > 0 || array[0] + array[1] <= array[2]
      raise TriangleError.new
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif array.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
