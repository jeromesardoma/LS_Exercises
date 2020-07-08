def rotate_array(arr)
  arr[1..-1].concat([arr.first])
end

def rotate_string(str)
  rotate_array(str.chars).join('')
end

def rotate_integer(int)
  rotate_array(int.to_s.chars).join('').to_i
end

def rotate_rightmost_digits(int, length)
  delimiter = int.to_s.length - length
  answer_as_str = int.to_s[0...delimiter] + rotate_string(int.to_s[delimiter..-1])
  answer_as_str.to_i
end

def max_rotation(int)
  result = int
  counter = int.to_s.length
  until counter == 1 do
    result = rotate_rightmost_digits(result, counter)
    counter -= 1
  end
  result
end

def max_rotation_with_zeros(int)
  int_as_chars = int.to_s.chars
  counter = 0
  int_as_chars = rotate_array(int_as_chars)
  until counter == int_as_chars.length - 2 do
    counter += 1
    int_as_chars = int_as_chars[0...counter] + rotate_array(int_as_chars[counter..-1])
  end
  int_as_chars.join('')
end

a = [1,3,5,6,2]
puts a.object_id
b = rotate_array a
p b
puts b.object_id

puts rotate_string 'lackadaisical'
puts rotate_integer 2999999
puts rotate_rightmost_digits 1234567, 6
puts max_rotation 123456
puts max_rotation_with_zeros 123006