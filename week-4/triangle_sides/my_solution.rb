# I worked on this challenge [by myself, with: Jessie Richardson].


# Your Solution Below

def valid_triangle?(side1, side2, side3)
 (side1 + side2 > side3) && (side2 + side3 > side1) && (side3 + side1 > side2)
end