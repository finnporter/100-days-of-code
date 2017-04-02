class Song
  attr_reader :lyrics, :singer

  def initialize(lyrics, singer)
    @lyrics = lyrics
    @singer = singer
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

  def define_singer()
    puts "The singer of this song is #{@singer}"
  end
end

happy_bday = Song.new(["Happy birthday to you",
  "I don't want to get sued",
  "So I'll stop right there"], "unknown")

bulls_on_parade = Song.new(["They rally around the family",
  "With pockets full of shells"], "some metall band")

sleep_song_lyrics = ["Warm kitty", "soft kitty", "little ball of fur."]
sleep_song = Song.new(sleep_song_lyrics, "Phoebie")

happy_bday.sing_me_a_song()
happy_bday.define_singer()

bulls_on_parade.sing_me_a_song()
bulls_on_parade.define_singer()

sleep_song.sing_me_a_song()
sleep_song.define_singer()
