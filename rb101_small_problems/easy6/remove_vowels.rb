def remove_vowels(arr)
  arr.map do |word|
    word.delete('aeiouAEIOU')
  end
end

p remove_vowels 'i had a breakthrough today'