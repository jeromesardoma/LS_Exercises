def valid_number?(number_string)
	number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
	puts "Enter a numerator:"
	numerator = gets.chomp
	if valid_number?(numerator) == false
		puts "Numerator is invalid, try again."
		next
	end
	loop do
		puts "Enter a denominator:"
		denominator = gets.chomp
		if valid_number?(denominator) == false || denominator.to_i == 0
			puts "Denominator is invalid, try again."
			next
		else
			break
		end
	end
	break
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}."

# create two separate loops for numerator and denominator