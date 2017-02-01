#part1
#first, second, third = ARGV

#puts "Your first variable is: #{first}"
#puts "Your second variable is: #{second}"
#puts "Your third variable is: #{third}"

#part2
#fruit, veg, meat = ARGV

#puts "This is the fruit you chose: #{fruit}"
#puts "This is the vegetable you chose: #{veg}"
#puts "This is the meat you chose: #{meat}"

#part3
thing = ARGV

print "This is the thing you chose: #{thing}, now give me another "
thing2 = $stdin.gets.chomp
puts "Aha, thanks for that second thing: #{thing2}."