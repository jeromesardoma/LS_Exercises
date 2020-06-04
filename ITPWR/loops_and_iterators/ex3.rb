def countdown_to_zero(n)
	if n == 0
		puts 0
	else
		puts n
		countdown_to_zero(n-1)
	end
end

countdown_to_zero(32)