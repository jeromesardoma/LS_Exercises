loop do
  puts "Do you want me to print something? (y/n)"
  response = gets.chomp

	if response.downcase == "y"
		puts "something"
		break
	elsif response.downcase == "n"
		puts "Got it, nothing printed."
		break
	else		
		puts "Invalid response, try again." 
		next
	end

end

answer = nil
loop do
	puts "Do you want me to print something? (y/n) "
	answer = gets.chomp.downcase
	break if %w(y n).include? answer
	puts "Invalid entry, try again."
end
puts "something" if answer == "y"

