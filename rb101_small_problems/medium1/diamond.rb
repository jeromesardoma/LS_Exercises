def palindromic_arr(int)
  result = [int]
  counter = int
  until counter == 1 do
    result = [counter - 2] + result + [counter - 2]
    counter -= 2
  end
  result
end

def return_star_str_of_length(int)
  '*' * int
end

def diamond(int)
  palindromic_arr(int).each do |l|
    puts return_star_str_of_length(l).center(int)
  end
end

def return_star_str_ends(int)
  full_star_str = return_star_str_of_length(int)
  full_star_str[1..-2] = " " * (int - 2) if int != 1
  full_star_str
end

def diamond_outline(int)
  palindromic_arr(int).each do |l|
    puts return_star_str_ends(l).center(int)
  end
end

p diamond 9
p diamond_outline 9
