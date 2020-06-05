h1 = { a: 200, b: 400, f: 111 }

#print all keys
h1.each_key{ |k| puts k }

#print all values
h1.each_value{ |v| puts v }

#print keys and values
h1.each{ |k, v| puts "key is #{k} and value is #{v}" }