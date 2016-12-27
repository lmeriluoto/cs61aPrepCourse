line_width = 50
t = 'Table of Contents'
ch1 = 'Chapter 1:  Getting Started'
ch2 = 'Chapter 2:  Numbers'
ch3 = 'Chapter 3:  Letters'
page1 = 'page  1'
page2 = 'page  9'
page3 = 'page 13'
puts t.center(line_width)
puts ''
puts ch1.ljust(line_width/2) + page1.rjust(line_width/2)
puts ch2.ljust(line_width/2) + '  ' + page2.rjust(line_width/2)
puts ch3.ljust(line_width/2) + '  ' + page3.rjust(line_width/2)
