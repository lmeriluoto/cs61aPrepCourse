$nesting_depth = 0
def log block_name, &block
  space = '  ' * $nesting_depth
  puts space + 'Beginning ' + block_name
  $nesting_depth = $nesting_depth + 1
  outcome = block.call
  puts space + block_name + ' finished, returning: ' + outcome.to_s
  $nesting_depth = $nesting_depth - 1
end

log 'outer block' do
  log 'inner block' do
    log 'inner inner block' do
      'supercalifragilisticexpialidocious'.reverse
    end
    ':)'
  end
  log 'other inner block' do
    'supercalifragilisticexpialidocious'
  end
  1234
end
