h1 = { a: 200, b: 400 }
h2 = { c: 300, d: 999 }

h1.merge(h2)
p h1
# merge doesn't mutate the array

h1.merge!(h2)
p h1
# merge! mutates the array