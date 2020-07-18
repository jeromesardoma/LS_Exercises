def is_featured(int)
  int.odd? && int % 7 == 0 && int.to_s.chars.uniq.length == int.to_s.length
end

def next_featured(int)
  return "No featured value above #{int}." if int >= 9876543210
  test_value = int
  test_value -= 1 until test_value % 7 == 0 && test_value.odd?
  loop do
    test_value += 14
    break if is_featured(test_value)
  end
  test_value
end

puts next_featured 999_999_987


