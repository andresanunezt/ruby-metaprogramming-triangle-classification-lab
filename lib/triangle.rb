class Triangle
  attr_reader :side_1,:side_2, :side_3


def initialize(side_1,side_2,side_3)
@side_1 = side_1
@side_2 = side_2
@side_3 = side_3
end

def kind
if self.side_1 == 0 && self.side_2 == 0 && self.side_3 == 0
  raise TriangleError
  
elsif self.side_1 < 0 || self.side_2 < 0 || self.side_3 < 0
    raise TriangleError
    
elsif @side_1 >= @side_2 + @side_3 || @side_2 >= @side_1 + @side_3 || @side_3 >= @side_2 + @side_1
      raise TriangleError  
elsif self.side_1 == self.side_2 && self.side_1 == self.side_3
      return :equilateral

elsif self.side_1 == self.side_2 || self.side_2 == self.side_3 || self.side_1 == self.side_3
return :isosceles
else
  return :scalene
end


end

class TriangleError < StandardError
 
end

end
