def print_in_box(message)
   top_and_bottom_line = "+#{'-' * (message.length + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts top_and_bottom_line
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts top_and_bottom_line
end


print_in_box('To boldly go where no one has gone before.')

print_in_box('')
