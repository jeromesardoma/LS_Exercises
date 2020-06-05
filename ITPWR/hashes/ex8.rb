words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

=begin
  for each word in words, split the word and find the permutations
  then find the intersection of permutations with the words array
  then remove any duplications
=end

permutation_hash = {}

words.each do |word|
  permutations_of_word = word.split("").permutation.to_a.map{ |a| a.join }
  if words.intersection( permutations_of_word ) != nil
  	permutation_hash[word] = words.intersection( permutations_of_word )
  end
end

permutation_hash.values.map{ |a| a.sort! }.uniq!.each{ |a| p a }