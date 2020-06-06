loop do
	PASSWORD = "rubylang"
	puts "Please enter your password:"
	response = gets.chomp
	break if response == PASSWORD
	puts "Incorrect password, try again."
end

puts "Welcome!"

