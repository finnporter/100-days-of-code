#write the same function 10 ways

  def ac3(assassin, templar)
    puts "Assassins: #{assassin}."
    puts "Templars: #{templar}."
  end

  #1 direct method
  ac3("Connor", "Haythem")

  #2 variable method
  best_assassin = "Andie, "
  best_templar = "Nobody, "

  ac3(best_assassin, best_templar)

  #3 with "maths"
  assassin = "Connor"
  templar = "Haythem"
  ac3(best_assassin + assassin, best_templar + templar)

  #4 with numbers
  ac3("Connor" *3, "Haythem" *2)

  #5 maths with strings
  ac3("Connor & " + "Andie", "Haythem & " + "Nobody")
