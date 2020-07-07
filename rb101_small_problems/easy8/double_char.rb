def repeater(str)
  result = ''
  str.each_char { |char| result << char * 2 }
  result
end

p repeater 'Hello world!'

def double_consonants(str)
  result = ''
  str.each_char do |char|
    char =~ /[b-df-hj-np-tv-z]/i ? result << char * 2 : result << char
  end
  result
end

p double_consonants 'Hello world9!'