h = {a:1, b:2, c:3, d:4}

# get value of key :b
p h[:b]

#add {e:5} to h
h[:e] = 5
p h

# remove key/value pairs with values < 3.5
h.delete_if { |k, v| v < 3.5 }
p h 