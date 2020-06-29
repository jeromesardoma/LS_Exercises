FULL_NAMES = ['zero', 'one', 'two', 'three', 'four', 'five', 
'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 
'twelve', 'thirteen', 'fourteen', 'fifteen', 
'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(arr)
  arr.sort_by do |i|
    FULL_NAMES[i] # note: constants can be called on in method definitions, whereas global variables can't
  end
end

 def number_sort_enum(arr)
  arr.sort do |a, b|
    FULL_NAMES[a] <=> FULL_NAMES[b]
  end
end


p alphabetic_number_sort [9, 2, 1, 12, 15]
p number_sort_enum [9, 2, 1, 12, 15]