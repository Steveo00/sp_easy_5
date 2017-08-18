ALPHA = ('a'..'z').to_a

def cleanup(str)
  result = []
  str.chars.each do |ch|
    ALPHA.include?(ch.downcase) ? result << ch : result << ' ' 
  end  
  result.join.squeeze(' ')
end

puts cleanup("hello") == 'hello'
puts cleanup("hello world") == 'hello world'
puts cleanup(" hello world") == ' hello world'
puts cleanup("---what's my +*& line?") == ' what s my line '