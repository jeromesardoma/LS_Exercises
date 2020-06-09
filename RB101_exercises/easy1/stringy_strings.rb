def stringy i
	remainder = i % 2
	number_of_pairs = i / 2
	result = ""
	number_of_pairs.times{ result << "10" }
	result << "1" if remainder != 0
	result
end

puts stringy 6
puts stringy 9
puts stringy 4
puts stringy 7

def stringy_mod i, option = 1
  numbers = []
  i.times do |index|
  	push_to = index.even? ? option : (option + 1).modulo(2)
  	numbers << push_to
  end

  numbers.join("")
end

puts stringy_mod 6
puts stringy_mod 6, 0

