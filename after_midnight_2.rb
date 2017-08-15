def after_midnight(str)
  hours = str.split(':').first.to_i
  minutes = str.split(':').last.to_i
  str == '24:00' ? 0 : hours * 60 + minutes
end

def before_midnight(str)
  hours = str.split(':').first.to_i
  minutes = str.split(':').last.to_i
  str == '00:00' ? 0 : 24 * 60 - ( hours * 60 + minutes )
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0