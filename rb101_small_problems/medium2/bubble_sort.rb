def bubble_sort!(arr)
  swaps = 0
  index_of_last_swap = arr.length - 2
  0.upto(index_of_last_swap) do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      swaps += 1
      index_of_last_swap = i
    end
  end
  swaps == 0 ? arr : bubble_sort!(arr)
end

def bubble_sort_v2!(arr)
  swaps = 0
  index_of_last_swap = arr.length - 1
  1.upto(index_of_last_swap) do |i|
    if arr[i-1] > arr[i]
      arr[i-1], arr[i] = arr[i], arr[i-1]
      swaps += 1
      index_of_last_swap = i
    end
  end
  return arr if swaps == 0
  bubble_sort!(arr[0...index_of_last_swap]) + arr[index_of_last_swap..-1]
end

def time_sort
  arr = (1..1000).to_a.shuffle
  start = Time.now
  bubble_sort! arr
  puts "V1 Completed in #{start - Time.now} seconds."
  start = Time.now
  bubble_sort_v2! arr
  puts "V2 Completed in #{start - Time.now} seconds."
end

time_sort

