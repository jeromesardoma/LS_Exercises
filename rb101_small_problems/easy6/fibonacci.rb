def fibonacci_at_index(ind)
  ind <= 2 ? 1 : fibonacci_at_index(ind-2) + fibonacci_at_index(ind-1)
end

def fib_index_by_length(len)
  answer = 1
  loop do
    break if fibonacci_at_index(answer).to_s.length == len
    answer += 1
  end
  answer
end


puts fib_index_by_length 10