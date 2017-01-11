def roman_to_integer roman_num
  integer = 0
  i = 0
  while i < roman_num.length
    if roman_num[i] == 'M'
      integer = integer + 1000
    elsif roman_num[i] == 'D'
      integer = integer + 500
    elsif roman_num[i] == 'C'
      integer = integer + 100
    elsif roman_num[i] == 'L'
      integer = integer + 50
    elsif roman_num[i] == 'X'
      integer = integer + 10
    elsif roman_num[i] == 'V'
      integer = integer + 5
    elsif roman_num[i] == 'I'
      if roman_num[i+1] == 'X'
        integer = integer + 9
        i = i + 2
      elsif roman_num[i+1] == 'V'
        integer = integer + 4
        i = i + 2
      else
        integer = integer + 1
      end
    end
    i = i + 1
  end
  integer
end

puts 'Give a roman numeral:'
roman = gets.chomp.upcase
while roman.include?('A') || roman.include?('B') || roman.include?('E') || roman.include?('F') || roman.include?('G') || roman.include?('H') || roman.include?('J') || roman.include?('K') || roman.include?('N') || roman.include?('O') || roman.include?('P')  || roman.include?('Q') || roman.include?('R') || roman.include?('S') || roman.include?('T') || roman.include?('U') || roman.include?('W') || roman.include?('Y') || roman.include?('Z')
  puts 'Please enter a valid roman numeral.'
  roman = gets.chomp.upcase
end
puts roman_to_integer roman
