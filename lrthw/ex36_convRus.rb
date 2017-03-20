def convRus
  puts "Rus: I'm very worried. What should we do?"
  puts"""
  1) I don't know. Maybe we should go to the police?
  2) When did you last see Roy?"""
  print "> "
  conv1 = $stdin.gets.chomp.to_i
  if conv1 == 1
    puts "Are you sure? I don't trust them."
    puts "I'd rather we do something oursleves. (y/n)"
    print "> "
    conv1a = $stdin.gets.chomp.downcase
    if conv1a == "y"
      puts "Alright, let's think of something else."
      #I would like to call do_nothing function from other file.
      load "./ex36.rb"
      do_nothing
      #File.close("ex36_convRus.rb")
    elsif conv1a == "n"
      puts "Are you sure about that?"
      sleep 2
      puts "-------------------------"
      convRus
    else
      puts "."
    end
  else
    puts "."
  end
end

convRus
