def swap(str)
  modified_array = str.split.map do | word |
    word[0], word[-1] = word[-1], word[0]
    word
  end
  modified_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('Ab') == 'bA'
puts swap('a') == 'a'
