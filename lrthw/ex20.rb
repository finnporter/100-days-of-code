input_file = ARGV.first #finds a file that is specified when running the rb file

def print_all(f) #defines a function print_all with one argument f
  puts f.read #writes out what is in that f argument
end #ends the function

def rewind(f) #defines a funcion rewind with one argument f
  f.seek(0) #seek looks for the position in the file specified by the integer in the argument, in this case 0. it's counted in bytes, so it goes back to 0 bytes
end #ends the function

def print_a_line(line_count, f) # defines a function print_a_line with two arguments line_count and f
  puts "#{line_count}, #{f.gets.chomp}" #writes out what the line_count is and what the f is. f represents the input file that is gets-ed
end


current_file = open(input_file) #defines a variable current_file. It is the input file that is being opened

puts "First let's print the whole file:\n" #writes something to the screen

print_all(current_file) #calls function to print all of input_file

puts "Now let's rewind, kind of like a tape." #writes something to the screen

rewind(current_file) #calls function to hop back to position 0 in the current_file

puts "Let's print three lines:" # prints something to the screen

current_line = 1 # defines a variable current_line as 1
print_a_line(current_line, current_file) #calls function print_a_line with two arguments, the line_count and input file

#current_line = current_line + 1 #defines the same variable to take the next line after the previously defined current_line in the file, therefore changing the variable current_line
current_line += current_line # does the same as the line above (x = x + y is the same as x += y)
print_a_line(current_line, current_file) #calls function print_a_line with two arguments, the line_count and input file

#current_line = current_line + 1 #defines the same variable to take the next line after the previously defined current_line in the file, therefore changing the variable current_line
current_line += current_line - 1 # does the same as the line above, the -1 corrects the number in the output. otherwise it will count current_line (which is 2) + current_line which will then be 4
print_a_line(current_line, current_file) #calls function print_a_line with two arguments, the changed line_count and input_file
