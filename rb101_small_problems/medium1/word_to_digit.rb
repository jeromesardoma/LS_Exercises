NUMBERS = %w(zero one two three four five six seven eight nine).freeze

def format_phone_number(str)
  "(#{str[0,3]}) #{str[3,3]}-#{str[6,4]}"
end

def word_to_digit(str)
  result = ""
  str.split.each do |word|
    string_to_push = NUMBERS.include?(word) ? NUMBERS.index(word).to_s : word + " "
    result << string_to_push
  end
  result.split.map do |word|
    word.match(/^\d{10}$/) ? format_phone_number(word) : word
  end.join(" ")
end

puts word_to_digit "My phone number is five five five one one two three six zero eight"

