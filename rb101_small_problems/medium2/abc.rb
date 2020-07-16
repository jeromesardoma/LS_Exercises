BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["J", "W"], ["N", "A"], 
          ["G", "T"], ["H", "U"], ["R", "E"], ["F", "S"], ["V", "I"], ["L", "Y"],
          ["Z", "M"]]

def block_word?(str)
  letters = str.upcase.chars
  used_blocks = Hash.new(0)
  letters.each do |letter|
    block_with_letter = BLOCKS.select { |arr| arr.include?(letter) }
    used_blocks[block_with_letter] += 1
  end
  used_blocks.values.all? { |v| v == 1 }
end

puts block_word? 'jest'
puts block_word? 'batch'
puts block_word? 'butch'