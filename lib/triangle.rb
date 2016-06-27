class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sum = side1 + side2 + side3
  end

  def kind
    if (self.side1 == 0 || self.side2 == 0 || self.side3 == 0) ||
        (self.side1 < 0 || self.side2 < 0 || self.side3 < 0) ||
        (self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= self.side2 || self.side3 + self.side2 <= self.side1)

      raise TriangleError

    else
      return :equilateral if self.side1 == self.side2 && self.side2 == self.side3
      return :isosceles if self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
      return :scalene
    end
  end
end


class TriangleError < StandardError



end
