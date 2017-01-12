def log block_name, &block
  puts 'Beginning ' + block_name
  outcome = block.call
  puts block_name + ' finished, returning: ' + outcome.to_s
end

log 'outer block' do
  log 'inner block' do
    ':)'
  end
  log 'other inner block' do
    'supercalifragilisticexpialidocious'
  end
  1234
end
