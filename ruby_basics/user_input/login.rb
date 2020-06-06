loop do
	USERNAME = "jerome"
	PASSWORD = "rubylang"
	puts "Please enter your username:"
	username_try = gets.chomp
	puts "Please enter your password:"
	password_try = gets.chomp
	break if username_try == USERNAME && password_try == PASSWORD
	puts "Authentication failed, try again."
end

puts "Welcome!"

