# creating a hash that maps states to their abbreviations
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}
puts states

#crating a hash that links states to cities located in these states
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

#adding more cities to the hash
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts cities

#puts out some cities
puts '-' * 10
puts "NY state has: #{cities['NY']}"
puts "Florida has: #{cities['FL']}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#do it by using first the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every city in ever state
cities.each do |abbrev, city|
  puts "#{abbrev} has #{city}."
end

#now do both at the same time
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}."
end

puts '-' * 10
#by default ruby says nil when someting isn't there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

#default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}."

#playing around with default values in hashes
uk = Hash.new('not known in the uk')
uk["Edinburgh"] = 'Scotland'
uk["London"] = 'England'
puts uk["Edinburgh"]
puts uk["Cardiff"]
uk.include? "Scotland"
if uk.include? "Edinburgh"
  puts "True"
else
  puts "false"
end
