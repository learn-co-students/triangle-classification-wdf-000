class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if invalid?
      raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      :isosceles
    elsif @length1 != @length2 && @length2 != @length3
      :scalene
    end
  end

  def invalid?
    lengths = [@length1, @length2, @length3]
    sum = lengths.inject(0, &:+)
    lengths.all?{|l| l == 0} || lengths.any?{|l| l < 0} || lengths.any? {|l| l >= (sum - l)}
  end
end

class TriangleError < StandardError
end