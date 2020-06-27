def int_to_str(int)
  hash = (0..9).to_a.zip(('0'..'9').to_a).to_h
  digits = []
  divisor = int
  loop do
    digits.unshift (divisor % 10)
    divisor /= 10
    if divisor / 10 == 0
      digits.unshift divisor
      break
    end
  end
  digits.map{ |d| hash[d] }.join('')
end

p int_to_str 46543501948

def int_to_str_v2(int)
  integers_as_strings = ('0'..'9').to_a
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend integers_as_strings[remainder]
    break if int == 0
  end
  result
end

p int_to_str_v2 46543501948

def signed_int_to_str(int)
  x = if int < 0
        { sign: '-', value: -int }
      else
        { sign: '+', value: int }
      end
  "#{x[:sign]}#{int_to_str(x[:value])}"
end

p signed_int_to_str 53223
p signed_int_to_str -53223

