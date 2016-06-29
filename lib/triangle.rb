class Triangle

  attr_accessor :s1, :s2, :s3, :type

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if s1+s2 <= s3 || s1 + s3 <= s2 || s2+s3 <= s1
      raise TriangleError
    else
      if s1 == s2 && s1 == s3
        self.type = :equilateral
      elsif s1 == s2 || s2 == s3 || s1 == s3
        self.type = :isosceles
      else 
        self.type = :scalene
      end
    end
  end



end

  class TriangleError < StandardError

  end