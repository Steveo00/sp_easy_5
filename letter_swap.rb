def swap(str)
  str_array = str.split
  modified_array = str_array.each do | word |
    word[0], word[-1] = word[-1], word[0]
  end
  modified_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('Ab') == 'bA'
puts swap('a') == 'a'
