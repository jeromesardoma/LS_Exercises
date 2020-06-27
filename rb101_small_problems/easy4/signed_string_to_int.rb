def string_to_int(str)
  hash = ('0'..'9').to_a.zip( (0..9).to_a ).to_h
  digits = str.chars.map{ |c| hash[c] }
  sum = digits.map.with_index{ |d, i| d * 10 ** (str.length-i-1) }.reduce(:+)
  sum
end

def signed_string_to_int(str)
  str.start_with?('-') ? string_to_int(str[1, str.length-1]) * -1 : string_to_int(str)
end

puts signed_string_to_int '-900'