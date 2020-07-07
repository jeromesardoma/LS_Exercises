def substrings_at_start(str)
  str.chars.map.with_index { |_, i| str[0, i+1] }
end

def substrings(str)
  (0..str.length-1).to_a.map do |int|
    substrings_at_start(str[int..-1])
  end.flatten
end

def is_a_palindrome?(str)
  str == str.reverse && str.length > 1 && !!!str.match(/[^a-z0-9]/i)
end

def palindromes(str)
  substrings(str).select { |string| is_a_palindrome?(string) }
end

p palindromes 'hello-madam-did-madam goodbye'

