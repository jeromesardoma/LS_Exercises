vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences array
	result = {}
	array.each{ |e| result[e] == nil ? result[e] = 1 : result[e] += 1 }
	result.each{ |k, v| puts "#{k} => #{v}" }
end

count_occurrences vehicles

