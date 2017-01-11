puts 'What year were you born in?'
year = gets.chomp
puts 'What number of month?'
month = gets.chomp
puts 'And the day?'
day = gets.chomp
spanks = (Time.new - Time.local(year,month,day))/(60*60*24*365)
puts 'SPANK! ' * spanks
