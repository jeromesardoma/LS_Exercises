def transpose(nested_arr)
  nested_arr_rows = nested_arr.size
  nested_arr_cols = nested_arr[0].size
  result = []
  (0..(nested_arr_cols-1)).each do |col_index|
    new_row = (0..(nested_arr_rows-1)).map do |row_index| 
      nested_arr[row_index][col_index]
    end
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])


