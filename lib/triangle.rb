class Triangle

  attr_accessor :side1, :side2, :side3, :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    error
    if side1 == side2 && side1 == side3
      self.kind = :equilateral
    
    elsif side1 == side2 || side1 == side3 || side2 == side3
      self.kind = :isosceles
      
    else
      self.kind = :scalene
      end
    end
  end

  def error
    if side1 == 0 || side2 == 0 || side3 == 0
      raise TriangleError
    elsif (side1 + side2) <= side3 || (side1 + side3) <= side2 || (side2 + side3) <= side1
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError

end


