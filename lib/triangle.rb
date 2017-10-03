class Triangle

  attr_accessor :a, :b, :c
  # triangle code
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
   def kind
    if @a <=0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
      begin
        raise TriangleError
      # rescue TriangleError.new => error
        p error.message
      end



    else
      if @a == @b && @b == @c
        return :equilateral
      end
      if @a == @b || @a == @c || @b == @c
        return :isosceles
      end
      if @a != @b && @b != @c && @a != @c
        return :scalene
      end
    end
  end
end
class TriangleError < StandardError
 def message
  "each side must be larger than 0 and the sum of two sides should be larger than the remaining side."
 end
end