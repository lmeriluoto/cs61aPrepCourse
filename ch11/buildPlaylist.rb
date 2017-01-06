def shuffle array
  shuffled_array = []
  while array.length > 0
    num = 0
    unshuffled_array = []
    array.each do |object|
      if num == rand(array.length)
        shuffled_array.push object
      else
        unshuffled_array.push object
      end
      num = num + 1
    end
  array = unshuffled_array
  end
  shuffled_array
end

Dir.chdir '/Users/lottameriluoto/Desktop/music'
songs = shuffle(Dir['*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  songs.each do |song|
    f.write song + "\n"
  end
end
puts 'Playlist created!'
