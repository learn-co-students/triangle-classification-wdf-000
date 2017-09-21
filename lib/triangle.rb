require 'pry'
class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
      array = [@side1, @side2, @side3]

      if array.all?{ |side| side > 0 } && (array[0] + array[1] > array[2] && array[1] + array[2] > array[0] && array[2] + array[0] > array[1])
        true
      else
        false
        # binding.pry
      end

  end


  def kind
    if self.valid?
      if @side1 == @side2 && @side2 == @side3
         :equilateral
      elsif @side1 == @side2 || @side2 == @side3 ||  @side1 == @side3
         :isosceles
      else
         :scalene
      end
    else
      raise TriangleError
    end
  end



end



class TriangleError < StandardError

end
