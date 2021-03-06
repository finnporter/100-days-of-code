filename = ARGV.first

puts "We're going to erase #{filename}."
puts "If you don't want that hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening file…"
target = open(filename, 'w') # >> the 'w' already removes the content from the file.

puts "Truncating the file. Goodbye."
#target = truncate(0) >> If I don't comment this out, I get an error message saying unknow method 'truncate'

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally we close it."
target.close