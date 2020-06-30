def alt_reverse!(arr)
  arr.sort! do |a, b|
    (arr.index(a) * -1) <=> (arr.index(b) * -1)
  end
  # or arr.sort_by! { |el| (arr.index(el) * -1) }
end

a = [1,2,99,5,4]
p alt_reverse! a
puts a.object_id == alt_reverse!(a).object_id

def alt_reverse(arr)
  arr.sort_by { |el| (arr.index(el) * -1) }
end

a = [1,2,99,5,4]
p alt_reverse a
puts a.object_id == alt_reverse(a).object_id