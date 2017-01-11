years = {}
days = {}
File.read('birthdays.txt').each_line do |person|
  name,day,year = person.split ','
  years[name] = year
  days[name] = day
end
puts 'Whose birthday do you want to know?'
name = gets.chomp
if days[name] == nil
  puts 'I don\'t know when their birthday is!'
else
  puts 'Their birthday is on' + days[name] + ', 2017. They will be ' + (2017 - years[name].to_i).to_s + ' years old.'
end
