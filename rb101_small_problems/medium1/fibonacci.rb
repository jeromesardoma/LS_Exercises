def fibonacci(n)
  return 1 if (1..2).include?(n)
  first, last = [1, 1]
  (n-2).times do
    first, last = [ last, first + last ]
  end
  last
end

def last_digit(int)
  dividend = int
  dividend, remainder = dividend.divmod(10)
  remainder < 10 ? remainder : last_digit(dividend)
end

def fibonacci_last(n)
  return 1 if (1..2).include?(n)
  first, last = [1, 1]
  (n-2).times do
    first, last = [ last_digit(last), last_digit(first + last) ]
  end
  last
end
