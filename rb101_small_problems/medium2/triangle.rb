def triangle_by_sides(*sides)
  sum_of_sides = sides.reduce(:+)
  sum_of_shortest_sides = sum_of_sides - sides.max
  return :invalid if sum_of_shortest_sides < sides.max || 
    sides.any? { |s| s <= 0 } ||
    sides.length != 3
  case sides.uniq.length
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

def triangle_by_angles(*angles)
  case 
  when angles.reduce(:+) != 180, angles.include?(0), angles.size != 3
    :invalid
  when angles.include?(90) then :right
  when angles.all? { |angle| angle < 90 } then :acute
  else :obtuse
  end
end

puts triangle_by_angles(100, 30, 40)





