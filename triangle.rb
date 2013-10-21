# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  a1, b1, c1 = [a, b, c].sort
  case 
    when a <= 0 || b <= 0 || c <= 0
      raise TriangleError, "A triangle should not have any sides of length 0"

    when (a1 + b1) <= c1
      raise TriangleError, "Any two sides of a triangle should add up to more than the third side"

  	when a == b && a == c
  		return :equilateral

  	when (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  		return :isosceles
  		
  	when a != b && a != c && b != c
  		return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
