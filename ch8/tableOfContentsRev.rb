line_width = 50
table = ['Table of Contents','Chapter 1:  Getting Started',
'Chapter 2:  Numbers','Chapter 3:  Letters','page  1','page  9',
'page 13']

puts table[0].center(line_width)
puts table[7]
puts table[1].ljust(line_width/2) + table[4].rjust(line_width/2)
puts table[2].ljust(line_width/2) + '  ' + table[5].rjust(line_width/2)
puts table[3].ljust(line_width/2) + '  ' + table[6].rjust(line_width/2)
