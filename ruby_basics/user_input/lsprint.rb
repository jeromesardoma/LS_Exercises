number = nil

loop do
	puts "How many output lines should be printed? Enter a number >= 3"
	number = gets.chomp.to_i
	break if number >= 3
	puts "You've entered an invalid number, try again."
end

number.times{ puts "Launch School is the best!" }