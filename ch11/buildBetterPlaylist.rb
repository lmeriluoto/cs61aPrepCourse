def music_shuffle array
  shuffled_array = []
  start = 0
  stop = array.length
  while shuffled_array.length < array.length
    if rand(100) < 50
      shuffled_array.push array[start]
      start = start + 1
    else
      shuffled_array.push array[stop - 1]
      stop = stop - 1
    end
  end
  shuffled_array
end
Dir.chdir '/Users/lottameriluoto/Desktop/music'
songs = music_shuffle(Dir['*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  songs.each do |song|
    f.write song + "\n"
  end
end
puts 'Playlist created!'
