def balanced?(str)
  pairs = %w( () [] {} '' "" )
  counts = Hash.new(0)
  pairs.each do |pair|
    if %w( '' "" ).include?(pair)
      chars_in_str = str.delete("^#{pair}")
      counts[pair] = chars_in_str.length % 2
    else 
      str.each_char do |c|
        counts[pair] -= 1 if c == pair[0]
        counts[pair] += 1 if c == pair[1]
        break if counts[pair] > 0
      end
    end
  end
  counts.values.all?(&:zero?)
end

