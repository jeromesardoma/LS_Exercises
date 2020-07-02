def staggered_case(str, start_with_downcase = 0) # pass 1 to start_with_downcase to begin with downcase
  result = str.chars.map.with_index do |char, i|
    (i + start_with_downcase).even? ? char.upcase : char.downcase
  end
  result.join('')
end

p staggered_case "This is a sample string."
p staggered_case "ignore 77 the 444 numbers"
p staggered_case 'I Love Launch School!'
