class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

  end

  def kind
     self.validate
     if s1 == s2 && s2 == s3
       :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
       :isosceles
    else
    :scalene
  end

  end

 def validate
   arr = [(s1 + s2 > s3), (s1 + s3 > s2), (s2 + s3 > s1)]
   [s1, s2, s3].each {|s| arr << false if s <= 0}
   if arr.include?(false)
     raise TriangleError
   end
 end



end

class TriangleError < StandardError
end
