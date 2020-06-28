def alphabetic_number_sort(arr)
  full_names = ['zero', 'one', 'two', 'three', 'four', 'five', 
                'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 
                'twelve', 'thirteen', 'fourteen', 'fifteen', 
                'sixteen', 'seventeen', 'eighteen', 'nineteen']
  hash = (0..19).to_a.zip(full_names).to_h
  arr.sort_by do |i|
    full_names[i]
  end
end

p alphabetic_number_sort [9, 2, 1, 12, 15]