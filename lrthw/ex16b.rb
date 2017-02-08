filename = ARGV.first

puts "We're going to erase #{filename}."
puts "If you don't want that hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening file…"
target = open(filename, 'r') # >> the 'w' already removes the content from the file.

puts "We're only reading the file."
print target.read

puts "And finally we close it."
target.close