def all_caps(string)
  string.length > 10 ? string.upcase : string
end

puts all_caps("lowly")
puts all_caps("This pizza is extreme!")