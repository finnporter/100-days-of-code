puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There is a giant bear here, eating a cheesecake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear does not share and runs away with the cake."
    puts "1. Run after it."
    puts "2. Pick up the crumbs."

    print "> "
    cake = $stdin.gets.chomp

    if cake == "1"
      puts "A bear can run much faster than a human. You should've watched more Attenborough! \nNo cake for you!"
    elsif cake == "2"
      puts "That's just gross. A bear slobbered all over this and you're eating it!"
    else
      puts "Well done, you are not doing anything."
    end

  elsif bear == "2"
    puts "The bear is startled and drops the cake before running away."
    puts "1. Pick up the cake and eat it."
    puts "2. Call ACME, Yogi the bear is on the run."

    print "> "
    crumbs = $stdin.gets.chomp

    if crumbs == "1"
      puts "That's just gross. A bear slobbered all over this and you're eating it!"
    elsif crumbs == "2"
      puts "They're not picking up. Please try again later or leave a message after the beep."
    else
      puts "%s never helped anyone." % crumbs
    end

  else
    puts "Well, doing %s is not going to solve any problems. The bear eats you and leaves the cake for dessert." % bear
  end


elsif door == "2"
  puts "There is a mammoth that's staring at you with a grim expression. It looks hungry."
  puts "1. Smile and wave in what you hope is a friendly manner."
  puts "2. Greet the Mammoth, introduce yourself and ask for it's name."
  puts "3. Hungry mammoths are probably grumpy. Retreat."

  print "> "
  mammoth = $stdin.gets.chomp

  if mammoth == "1" || mammoth == "2"
    puts "Did you really think that would work? The grumpy, hungry mammoth attacks you."
  else
    puts "Wise choice. While walking away from the mammoth you fall over a haybale."
    puts "1. Take the hay and feed the mammoth."
    puts "2. Find the door and go back to the dark room you came from."


    print "> "
    hungry_mammoth = $stdin.gets.chomp

    if hungry_mammoth == "1"
      puts "D'awwww. You made a friend for life."
    elsif hungry_mammoth == "2"
      puts "Great. You're at the beginning. What did you learn from that?"
    else
      puts "You're not good at making decisions, are you?"
    end
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
