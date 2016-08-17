# class TriangleError < StandardError
#  # triangle error code
#  def message
#   return  "Error"
#  end
# end
#
# class Triangle
#   # write code here
#   attr_accessor :side1, :side2, :side3
#
#   def initialize(side1, side2, side3)
#     @side1 = side1.to_f
#     @side2 = side2.to_f
#     @side3 = side3.to_f
#
#   end
#
#   def kind
#     if (side1 == "0"  || side2 == "0"  || side3 == "0")
#       begin
#         raise TriangleError
#       rescue TriangleError => error
#         puts error.message
#       end
#     elsif  ((side1 + side2 <= side3) || (side1 + side3 <= side2) || (side2 + side3 <= side1))
#       begin
#         raise TriangleError
#       rescue TriangleError => error
#         puts error.message
#       end
#     else
#       if (side1== side2) & (side1 == side3)
#         :equilateral
#       elsif ((side1== side2)&&(side1!= side3) &&(side2 != side3)) || ((side2 == side3)&&(side2!=side1)&&(side3!=side1)) ||((side1==side3)&&(side1!=side2)&&(side3!=side2))
#         :isosceles
#       elsif ((side1 != side2)||(side2 != side3)||(side1 !=side3))
#         :scalene
#       end
#     end
#
#
#   end
# end

class TriangleError < StandardError
 # triangle error code
 def message
  return  "Error"
 end
end

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f

  end

  def kind
    if (side1 == "0"  || side2 == "0"  || side3 == "0")

        raise TriangleError

    elsif  ((side1 + side2 <= side3) || (side1 + side3 <= side2) || (side2 + side3 <= side1))
          raise TriangleError
    else
      if (side1== side2) & (side1 == side3)
        :equilateral
      elsif ((side1== side2)&&(side1!= side3) &&(side2 != side3)) || ((side2 == side3)&&(side2!=side1)&&(side3!=side1)) ||((side1==side3)&&(side1!=side2)&&(side3!=side2))
        :isosceles
      elsif ((side1 != side2)||(side2 != side3)||(side1 !=side3))
        :scalene
      end
    end


  end
end
