entry = nil
operation = ''

loop do
  puts "Please enter an integer > 0."
  entry = gets.chomp.to_i
  if entry.is_a?(Integer) == false || entry <= 0 
    puts "You entered an invalid value, try again."
    next
  end
  break
end

loop do
  puts "Enter 's' to compute the sum, or 'p' to compute the product."
  operation = gets.chomp
  if operation != 's' || operation != 'p'
    puts "You entered an invalid operation, try again."
    next
  end
  break
end

def calculate_answer(integer, op)
  case op
  when 's' then (1..integer).to_a.reduce(:+)
  when 'p' then (1..integer).to_a.reduce(:*)
  else 'Invalid calculation.'
  end
end

def return_operation(op)
  if op == 's'
    'sum'
  elsif op == 'p'
    'product'
  else
    'OPERATION IS UNDEFINED'
  end
end

result = calculate_answer(entry, operation)
operation_chosen = return_operation(operation)

puts "The #{operation_chosen} of the integers between 1 and #{entry} is #{result}."











