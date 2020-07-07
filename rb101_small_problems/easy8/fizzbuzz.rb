def fizzbuzz(first, second)
  return "Invalid arguments: first arg must be < second arg" if first > second
  result = (first..second).to_a.map do |n|
    case
    when n % 3 == 0 && n % 5 == 0 then 'Fizzbuzz'
    when n % 3 == 0 then 'Fizz'
    when n % 5 == 0 then 'Buzz'
    else n
    end
  end
  result
end

p fizzbuzz(9, 3)
p fizzbuzz(3, 20)
