def letter_percentages(str)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |letter|
    type = case
           when letter =~ /[A-Z]/ then :uppercase
           when letter =~ /[a-z]/ then :lowercase
           else :neither
           end
    result[type] += 1
  end
  result.each_pair do |k, v|
    result[k] = ( v / (str.length * 1.0) * 100 ).round(2)
  end
  result
end

puts letter_percentages('abcdefGHI')
puts letter_percentages('AbCd +Ef')
puts letter_percentages('123')