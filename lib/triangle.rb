require "pry"

class Triangle
  # write code here
attr_accessor :a1, :a2, :a3


def initialize(a1, a2, a3)
  @a1 = a1
  @a2 = a2 
  @a3 = a3

end

def kind
  
  
 if a1 + a2 <= a3 || a1 + a3 <= a2 || a2 + a3 <= a1
    raise TriangleError
  elsif  a1 == a2 && a2 == a3 && a1 == a3
    :equilateral
  elsif  a1 == a2 || a2 == a3 || a1 == a3
    :isosceles
  else
    :scalene
     end
  end

  class TriangleError < StandardError
end


end

#binding.pry