def cleanup(str)
  result = ''
  str.each_char do |char|
    x = ('a'..'z').cover?(char) ? char : (result[-1] == ' ' ? '' : ' ')
    result << x
  end
  result
end

p cleanup '!@#$@#%where!@#mahhhh((dogs!@#!@#$#at'