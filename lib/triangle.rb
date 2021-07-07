class Triangle
  attr_accessor :first, :second, :third
  def initialize (first,second,third)
    @first=first
    @second=second
    @third=third
  end
  def kind 
    validate
    if (first == second && second == third)
      :equilateral
    elsif (first == second || second == third || first == third) 
     :isosceles
    else
      :scalene
    end
  end
  def validate
    raise TriangleError if( (first + second <= third) || (first + third <= second) || (second + third <= first ))
    raise TriangleError if (first<=0 || second<=0 || third<=0) 
	end
   class TriangleError < StandardError
	 end
end
