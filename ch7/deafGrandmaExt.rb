bye = 0
while bye < 3
  greet = gets.chomp
  if greet == greet.downcase
    puts 'HUH?! SPEAK UP, SONNY!'
    bye = 0
  elsif greet == greet.upcase && greet != 'BYE'
    puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s + '!'
    bye = 0
  elsif greet == 'BYE'
    if bye == 0
      puts 'RYE? I DON\'T LIKE RYE BREAD! YOU KNOW THAT!'
    elsif bye == 1
      puts 'LIE? GRAMMY DOESN\'T TELL LIES, SONNY. THAT\'S YOUR GRANDPA YOU MEAN.'
    else
            puts 'BYE, DEARIE!'
    end
    bye = bye + 1
  end
end
