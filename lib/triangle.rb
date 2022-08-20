class Triangle
  # write code here
attr_accessor :side_a, :side_b,:side_c


  
  def initialize side_a,side_b,side_c
    @side_a = side_a
    @side_b=side_b
    @side_c=side_c
  end



 def kind
 validate

  if side_a == side_b && side_b == side_c
     :equilateral
  elsif side_a == side_b || side_b == side_c || side_a == side_c
     :isosceles
  else
     :scalene
  end
 end


 
def validate
  if (side_a <= 0 || side_b <= 0 || side_c <= 0)
    raise TriangleError
  elsif (side_a + side_b <= side_c || side_a + side_c <= side_b || side_b + side_c <= side_a)
    raise TriangleError
  end

end

  class TriangleError < StandardError
    # triangle error code
  end

end
