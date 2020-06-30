DEGREE = "\xC2\xB0"

def cms(degrees)
  whole_degrees, decimal_minutes = degrees.modulo(360).divmod(1)
  whole_minutes, decimal_seconds = (decimal_minutes * 60).divmod(1)
  whole_seconds = (decimal_seconds * 60).divmod(1).first
  whole_degrees.to_s + DEGREE + whole_minutes.to_s.rjust(2, '0') + "'" + whole_seconds.to_s.rjust(2, '0') + "\""
end

puts cms 76.73
puts cms 93.034773
puts cms -400
puts cms 400