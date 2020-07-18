require 'Date'

def friday_13th(year)
  (1..12).count { |month| Time.new(year, month, 13).friday? }
end

puts friday_13th(2019)

def get_fridays(year)
  fridays = []
  first_friday = Date.new(year,1,1)
  loop do
    break if first_friday.friday?
    first_friday += 1
  end
  (1..52).each { |int| fridays << first_friday + 7 * (int - 1) }
  fridays
end

def months_with_five_fridays(year)
  count_hsh = get_fridays(year).each_with_object(Hash.new(0)) do |friday, new_hsh|
    new_hsh[friday.month] += 1
  end
  count_hsh.count { |_, v| v == 5 }
end

puts months_with_five_fridays(2001)

