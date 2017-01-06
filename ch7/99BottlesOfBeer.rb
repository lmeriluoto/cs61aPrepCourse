bottles = 99
while bottles > 2
  puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s +
  ' bottles of beer. Take one down and pass it around, ' + (bottles - 1).to_s +
  ' bottles of beer on the wall.'
  bottles = bottles - 1
end
if bottles == 2
  puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s +
  ' bottles of beer. Take one down and pass it around, ' + (bottles - 1).to_s +
  ' bottle of beer on the wall!'
  bottles = bottles - 1
end
if bottles == 1
  puts bottles.to_s + ' bottle of beer on the wall, ' + bottles.to_s +
  ' bottle of beer. Take one down and pass it around, no more bottles of beer on the wall!'
end
