def word_sizes(str)
  word_store = Hash.new(0)
  str.split.each do |word|    
    word_store[word.delete('^A-Za-z').length] += 1
  end
  word_store
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}