def staggered_case(str, start_with_downcase = 0) # pass 1 to start_with_downcase to begin with downcase
  result = str.chars.map.with_index do |char, i|
    (i + start_with_downcase).even? ? char.upcase : char.downcase
  end
  result.join('')
end

p staggered_case "This is a sample string."
p staggered_case "ignore 77 the 444 numbers"
p staggered_case 'I Love Launch School!'

def staggered_case_v2(str, stagger_with_non_alphas = false)
  result = ""
  uppercase = true
  str.each_char do |char|
    if char =~ /[a-z]/i || stagger_with_non_alphas 
      uppercase ? result << char.upcase : result << char.downcase
      uppercase = !uppercase
    else
      result << char
    end
  end
  result
end

p staggered_case_v2 "This is a sample string."
p staggered_case_v2 "This is a sample string.", true
