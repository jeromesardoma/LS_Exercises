loop do
	puts "How many output lines should be printed? Enter a number >= 3, or enter 'q' to quit."
	answer = gets.chomp
	break if answer.downcase == "q"

  if answer.to_i < 3
		puts "You entered an invalid value - please enter a number >= 3."
	else
		answer.to_i.times{ puts "Launch School is the best!" }
	end
end

puts "Program exited. Thanks!"

