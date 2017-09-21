require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
      self.side1 = side1
      self.side2 = side2
      self.side3 = side3
  end

  def kind
    #binding.pry
    if invalid_sides?
      begin
        raise TriangleError
    #   rescue TriangleError => error
    #     puts error.wrong_side_length
     end
    elsif invalid_sum_of_sides?
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.sum_not_adding_up
      end
    elsif all_sides_eql?
      :equilateral
    elsif two_sides_eql?
      :isosceles
    else
      :scalene
    end
  end

  private
    def all_sides_eql?
      self.side1 == self.side2 && self.side1 == self.side3
    end

    def two_sides_eql?
      (self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3) && !all_sides_eql?
    end

    def invalid_sides?
      self.side1 < 0.1 || self.side2 < 0.1 || self.side3 < 0.1
    end

    def invalid_sum_of_sides?
      (self.side1 + self.side2 <= self.side3) || (self.side2 + self.side3 <= self.side1)|| (self.side3 + self.side1 <= self.side2)
    end

end

  class TriangleError < StandardError

    def wrong_side_length
      "Sides must be of a greater length than 0"
    end

    def sum_not_adding_up
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end

  end
