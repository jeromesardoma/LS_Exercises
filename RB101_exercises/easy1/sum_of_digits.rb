def sum int
	int.to_s.chars.map(&:to_i).sum
end

puts sum(23) # == 5
puts sum(496) # == 19
puts sum(123_456_789) # == 45

def sum_no_loop int
	return int if int.to_s.length == 1
	int_string_array = int.to_s.chars
	element_shifted = int_string_array.shift
	element_shifted.to_i + sum_no_loop(int_string_array.join("").to_i)
end

puts sum_no_loop(23) # == 5
puts sum_no_loop(496) # == 19
puts sum_no_loop(123_456_789) # == 45