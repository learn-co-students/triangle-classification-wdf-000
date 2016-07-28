require 'pry'
class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  @@triangle_types = {equilateral: "equilateral", isosceles: "isosceles", scalene:"scalene"}

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind

      check_Error
      if side_a == side_b && side_b == side_c
        @@triangle_types.keys[0]
      elsif side_a != side_b && side_b != side_c && side_a != side_c
        @@triangle_types.keys[2]
      else
        @@triangle_types.keys[1]
      end
  end

  def check_Error
    if side_a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    elsif side_a + side_b <= side_c || side_b + side_c <= side_a || side_a + side_c <= side_b
      raise TriangleError
    end
  end



end

class TriangleError < StandardError

end
