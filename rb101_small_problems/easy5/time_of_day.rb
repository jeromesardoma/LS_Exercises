def time_of_day(int)
  minutes_after_midnight = int.modulo 1440
  hours, minutes = minutes_after_midnight.divmod(60).map(&:to_s)
  "#{hours.rjust(2,'0')}:#{minutes.rjust(2,'0')}"
end

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  hours * 60 + minutes
end

def before_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (1440 - (hours * 60 + minutes )).modulo 1440
end

p after_midnight '12:34'
p before_midnight '12:34'
p after_midnight '00:00'
p before_midnight '00:00'