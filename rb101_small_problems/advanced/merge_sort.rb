def merge_sort(arr1, arr2)
  result = []
  a1, a2 = [arr1, arr2]
  loop do
    test_arr = [a1, a2].flatten # removes []
    smallest_number = test_arr[0] == test_arr.min ? test_arr[0] : a2[0]
    result << smallest_number
    arr_to_shorten = [a1, a2].select { |a| a.include?(smallest_number) }[0]
    arr_to_shorten == a1 ? a1 = a1[1..-1] : a2 = a2[1..-1]
    break if [a1, a2].all?(&:empty?)
  end
  result 
end

p merge_sort([7, 12, 19], [7, 7, 7])