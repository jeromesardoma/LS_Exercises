def longest_sentence(text)
  sentences = text.split(/[.?!]/)
  sentence_hash = Hash.new(0)
  sentences.each_with_index do |sentence, index|
    sentence_hash[index] = { 
      sentence: sentence, 
      length: sentence.split.length
     }
  end
  longest_sentence = sentence_hash.max_by { |_, v| v[:length] } # returns array
  puts "The longest sentence is

  #{longest_sentence[-1][:sentence]}.

which is #{longest_sentence[-1][:length]} words long."
end

def longest_paragraph(text)
  paragraphs = text.split(/\n\n/)
  paragraph_hash = Hash.new(0)
  paragraphs.each_with_index do |paragraph, index|
    paragraph_hash[index] = { 
      paragraph: paragraph, 
      length: paragraph.split.length
     }
  end
  longest_paragraph = paragraph_hash.max_by { |_, v| v[:length] } # returns array
  puts "The longest paragraph is

  #{longest_paragraph[-1][:paragraph]}

which is #{longest_paragraph[-1][:length]} words long."
end

text = File.read("./frankenstein.txt")

puts longest_sentence(text)
puts longest_paragraph(text)

