class Dragon
  def feed
    puts 'You fed your baby dragon igneous rocks!'
    puts 'She is munching on them.'
  end
  def walk
    puts 'You took your baby dragon on a walk!'
    puts '... She accidentally burnt your neighbor\'s mailbox.'
  end

  puts 'What do you want to do with your baby dragon?'
  activity = gets.chomp.downcase
  if activity == 'feed'
    Dragon.new.feed
  elsif activity == 'walk'
    Dragon.new.walk
  else
    puts 'The dragon is just a baby. It can\'t do that yet.'
  end
end
