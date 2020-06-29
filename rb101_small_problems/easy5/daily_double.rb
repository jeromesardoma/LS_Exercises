def crunch(str)
  result = ''
  str.each_char do |letter|
    result += letter unless result[-1] == letter
  end
  result
end

p crunch 'tteessttaarroossssa'
p crunch ''