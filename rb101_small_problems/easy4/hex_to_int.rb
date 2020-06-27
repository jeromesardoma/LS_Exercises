def hex_to_int(str)
  hash = ('0'..'9').to_a.concat( ('A'..'F').to_a ).zip( (0..15).to_a ).to_h
  digits = str.chars.map { |c| hash[c] }
  sum = digits.map.with_index { |d, i| d * (16 ** (str.length - i - 1)) }.reduce(:+)
  sum
end

puts hex_to_int '4D9F'