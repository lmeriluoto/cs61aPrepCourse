bye = 0
while bye < 3
  greet = gets.chomp
  if greet == greet.downcase
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif greet == greet.upcase && greet != 'BYE'
    puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s + '!'
  elsif greet == 'BYE'
    bye = bye + 1
  end
end
