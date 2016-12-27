while true
  greet = gets.chomp
  if greet == greet.downcase
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif greet == greet.upcase && greet != 'BYE'
    puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s + '!'
  elsif greet == 'BYE'
    break
  end
end
