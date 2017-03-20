def start
  puts File.read("./ex36_intro1.txt")
  puts "\n"
  puts File.read("ex36_intro2.txt")
  puts """
  What do you want to do?
    1) Investigate.
    2) Do nothing. He's probably just out having fun and forgot to tell anyone.
    3) Go to the police.
    """
  print "> "
  starts = $stdin.gets.chomp.to_i
  if starts == 1
    investigate
  elsif starts == 2
    do_nothing
  elsif starts == 3
    call_police
  else
    "Try again."
    start
  end
end

def investigate
  puts "You have decided to find out more. It's not like Roy to vanish without notice."
  puts "Where do you start?"
  puts"""
  1) Find Rus and start a conversaton to retrace Roy's steps.
  2) Sneak into Roy's room and quietly go through his things?"""
  print "> "
  find_out_more = $stdin.gets.chomp.to_i

  if find_out_more == 1
    puts "Rus: I'm very worried. What should we do?"
    puts"""
    1) I don't know. Maybe we should go to the police?
    2) When did you last see Roy?"""
    print "> "
    conv1 = $stdin.gets.chomp.to_i
    if conv1 == 1
      puts "Are you sure? I don't trust them."
      puts "Do you? (y/n)"
      print "> "
      conv1a = $stdin.gets.chomp.downcase
      if conv1a == "y"
        puts "Yes, I think that would be best. It's their job, after all."
        call_police
      elsif conv1a == "n"
        puts "Are you sure about that? We could try searching his room."
        puts "Rus: Yes, maybe we can find something there. A clue, maybe."
        search_room
      else
        puts "I don't understand."
        sleep 2
        puts "-------------------"
        investigate
      end

    elsif conv1 == 2
        puts "Rus: I saw him yesterday morning before I went to work. He wished me a good day."
        puts "There was nothing out of the ordinary."
        puts "How about we have a look around his room?"
        search_room
    else
      puts "I don't know what that means."
      sleep 2
      puts "-----------------------------"
      investigate
    end
  elsif find_out_more == 2
    search_room
  else
    "You have to type 1 or 2."
    sleep 2
    puts "--------------------"
    investigate
  end
end

def search_room
  puts """As you enter Royland's room you notice a box under the bed, an open drawer,
  and the door of the wardrobe as it stands ajar.
  What do you want to look at?"""
  clue_found = false

  while true
    print "> "
    search = $stdin.gets.chomp.downcase

    if search.include? "box"
      puts """You take out the box from under the bed and open it. You have a look inside.
      You see a few photographs and at the very bottom is a letter."""
      sleep 2
      puts """
      Dear Roy,
      I really appreciated what you said in your last letter. I also remember that night very fondly.
      Your kisses are so sweet and the way your hands..."""
      puts "You quickly put away the letter and wash your brain with soap."
    elsif search.include? "drawer"
      puts """You pull the drawer fully open and see a letter weight, a letter opener and
      some empty stationary. That was a bust."""
      search_room
    elsif search.include? "wardrobe"
      puts """You go to investigate the wardrobe. You notice a shoebox at the very back.
      As you pull it out, you notice a letter taped to the bottom.
      > """
      clue_found = true
    elsif search.include? "read" || "open" || "letter" || "take"
      puts File.read("ex36_letter.txt")
      go_after_Roy
    else
      puts "What?"
    end
  end
end

def go_after_Roy
  puts "Rus: We have to find him!"
  puts "You agree and you already have a plan."
  puts """
  Do you:
  1) Go to the pub.
  2) Ask Rus if he knows anyone of Roys friends."""
  print "> "
  which_plan = $stdin.gets.chomp.to_i

  if which_plan == 1
    puts "Let's go to the pub and see who we can find."
    pub
  elsif which_plan == 2
    puts "Rus: I know Nigel. He sometimes hangs out with Roy. I even know where he lives."
    visit_Nigel
  else
    puts "Please, try again"
    puts "Loading…"
    sleep 3
  end
end

def pub
  puts """
  You arrive at the pub and order a club soda. When you're sure nobody is listening
  you ask the bartender about the Resistance meetings. He nods his head but doesn't say anything.
  He vanishes behind a door to the back room. You wait and sip your club soda with Rus."""
  sleep 5
  puts """
  Suddenly, the door flies open and 5 armed guards storm in. The bartender reappears from the back
  and points at Rus and then at you. Immediately, they are putting you in cuffs and escort you from the premises.
  You'll never get out of that prison cell ever again."""
  puts "\nWould you like to try a different scenario? (y/n)"
  print "> "
  answer = $stdin.gets.chomp.downcase

  if answer == "y"
    start
  elsif answer == "n"
    puts "Suit yourself. I hope you think about what you've done."
    final
  else
    puts "No idea what that means. I'll just start the game again."
    puts "Loading…"
    sleep 3
    start
  end
end

def visit_Nigel
  puts "You and Rus find his brother's friend, Nigel, at home."
  puts """
  You greet him and ask him if he has seen Roy. Unfortunately, he hasn't.
  Carefully, you bring up the Resistance in a conversation. Nigel turns sombre and nods.
  He tells you and Rus to wait and leaves the room.
  When he comes back with a tray of drinks you happily take what's offered and sit down with him
  in the living room.
  Suddenly, the door flies open and 5 armed guards storm in. Nigel points at Rus and then at you.
  Immediately, they are putting you in cuffs and escort you from the premises. Rus had conveniently
  forgotten that Nigel's father was a guard, as was his father before him.
  You'll never get out of that prison cell ever again."""
  puts "\nWould you like to try a different scenario? (y/n)"
  print "> "
  answer = $stdin.gets.chomp.downcase

  if answer == "y"
    start
  elsif answer == "n"
    puts "Suit yourself. I hope you think about what you've done."
    final
  else
    puts "No idea what that means. I'll just start the game again."
    puts "Loading…"
    sleep 3
    start
  end
end


def do_nothing
  puts File.read("ex36_do_nothing.txt")
  puts "\nTry again? (y/n)"
  print "> "
  answer = $stdin.gets.chomp.downcase

  if answer == "y"
    start
  elsif answer == "n"
    puts "Suit yourself. I hope you think about what you've done."
    final
  else
    puts "No idea what that means. I'll just start the game again."
    puts "Loading…"
    sleep 3
    start
  end
end

def call_police
  puts "The police gives you a lot of forms to fill out."
  puts "They say that Royand is probably just somewhere having fun and forgot the time."
  puts"""
  1) They are probably right. You fill in the rest of the form and go home.
  2) Royland has always been very independent. You give the police more information and insist they start looking.
  """
  print "> "
  police_station = $stdin.gets.chomp.to_i

  if police_station == 1
    wait
  elsif police_station == 2
    forms
  else
    puts "I don't understand."
    sleep 1
    puts "--------------------"
    call_police
  end
end

def wait
  puts "You put the kettle on and give them a few more hours."
  sleep 5
  puts "It's probably ok, if you give them until tomorrow. You head to bed."
  sleep 7
  puts "In the morning, there is no news. \nDo you want to go back to the police instead of more waiting? (y/n)"
  print "> "
  go_back = $stdin.gets.chomp.downcase

  if go_back == "y"
    puts "You go back and ask them to finally get results."
    fight
  elsif go_back == "n"
    puts "You go back and demand answers."
    forms
  else
    puts "I didn't quite catch that."
    sleep 1
    puts "--------------------------"
    wait
  end
end

def forms
  puts "You are handed more files to fill in."
  sleep 3
  puts "You get handed another file that you need to fill in. Then you go home."
  wait
end

def fight
  puts """You get so angry because they don't give you any answers that you get into a fight
  with a police officer. They don't tolerate insubordination and arrest you for doubting a
  police officer on duty. You are lucky and have a good lawyer. He gets you a mild sentence.
  You'll be out in 15 years."""
  final
end

def final
  puts "Thanks for playing."
  exit(0)
end

start
