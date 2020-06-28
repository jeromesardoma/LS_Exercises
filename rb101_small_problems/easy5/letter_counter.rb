def word_sizes(str)
  # str.split.each_with_object({}) do |word, new_hsh|
  #   new_hsh[word.length] == nil ? new_hsh[word.length] = 1 : new_hsh[word.length] += 1
  # end
  str.split.each_with_object(Hash.new(0)) do |word, new_hsh|
    new_hsh[word.delete('^a-zA-Z').length] += 1
  end
end

p word_sizes 'Hey diddle diddle, the cat and the fiddle!'