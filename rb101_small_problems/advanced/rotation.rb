def rotate90(arr, degrees_of_rotation = 90)
  arr_rows = arr.size
  arr_cols = arr[0].size
  result = []
  (0...arr_cols).each do |col_ind|
    new_row = (0...arr_rows).map do |row_ind|
      arr[row_ind][col_ind]
    end
    result << new_row.reverse
  end
  return result if degrees_of_rotation == 90
  rotate90(result, degrees_of_rotation - 90)
end

p rotate90( [[1,2,3],[4,5,6],[7,8,9]], 270)
