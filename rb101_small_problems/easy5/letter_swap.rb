def swap(phrase)
  phrase.split.each { |w| w[0], w[-1] = [ w[-1], w[0] ] }.join(' ')
end

p swap 'I am having a wonderful time'