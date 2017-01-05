def sort some_array
  dictionary_sort some_array, []
end
unsorted_array = ['b','Z','d','A','f','C','x']
def dictionary_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  first = unsorted_array.pop
  new_unsorted_array = []
  unsorted_array.each do |testing|
    if testing.downcase < first.downcase
      new_unsorted_array.push first
      first = testing
    else
      new_unsorted_array.push testing
    end
  end
  sorted_array.push first
  dictionary_sort new_unsorted_array, sorted_array
end
puts(sort(unsorted_array))
