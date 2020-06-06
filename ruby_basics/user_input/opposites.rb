def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

answer_1 = nil
answer_2 = nil

is_invalid = Proc.new{ |a| valid_number?(a) == false }

loop do
	puts "Please enter a positive or negative integer."
	answer_1 = gets.chomp
	puts "Please enter another positive or negative integer."
	answer_2 = gets.chomp
	answers = [ answer_1, answer_2 ]
	puts "You entered an invalid value.  Try again." if answers.any?(&is_invalid)
	answers = answers.map(&:to_i)
	break if answers.any?(&:positive?) && answers.any?(&:negative?)
	puts "One answer must be positive, and the other negative.  Try again." if answers.all?(&:positive?) || answers.all?(&:negative?)
end

puts "#{answer_1} + #{answer_2} = #{answer_1.to_i + answer_2.to_i}"