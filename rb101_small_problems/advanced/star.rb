def star(int)
  output = []
  left_counter = 0
  right_counter = -1
  midpoint = (int - 1) / 2
  until left_counter == int do
    if left_counter == midpoint
      output << Array.new(int, "*")
    else
      row = Array.new(int, " ")
      row[left_counter], row[midpoint], row[right_counter] = Array.new(3, "*")
      output << row
    end
    left_counter += 1
    right_counter -= 1
  end
  output.each { |row| puts row.join("") }
end

p star 15
