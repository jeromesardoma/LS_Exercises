def sum_square_difference(int)
  sum = 0
  sum_of_squares = 0
  1.upto(int) do |i|
    sum += i 
    sum_of_squares += i ** 2
  end
  sum ** 2 - sum_of_squares
end

p sum_square_difference(100)