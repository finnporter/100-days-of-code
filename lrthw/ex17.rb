from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these in one line, how?
in_file = open(from_file)
indata = in_file.read

#I had to look up the solution and I'm not sure I completely understand it
#indata = File.open(from_file) { |f| f.read() }

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, Ctrl-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close

#to open this file you need to use the terminal to create a file and show the new file.
# $ echo "This is the test file." > ex17_from.txt
# $ cat ex17_from.txt
# $ ruby ex17.rb ex17_from.txt ex17_to.txt
