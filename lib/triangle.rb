class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if self.invalid
      begin
        raise TriangleError
      end
    elsif
      @s1 == @s2 && @s2 == @s3
      :equilateral
    elsif
      @s1 == s2 || @s2 == @s3 || @s3 == @s1
      :isosceles
    else
      :scalene
    end
  end

  def invalid
    if @s1 == 0 || @s2 == 0 || @s3 == 0
      true
    elsif  @s1 < 0 || @s2 < 0 || @s3 < 0
      true
    elsif (@s1 + @s2) <= @s3 || (@s2 + @s3) <= @s1 || (@s1 + @s3) <= @s2
      true
    else
      false
    end
  end

end

class TriangleError < StandardError
end