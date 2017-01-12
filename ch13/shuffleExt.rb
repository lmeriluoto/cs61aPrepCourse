class Array
  def shuffle
    array = self
    shuffled_array = []
    while array.length > 0
      num = 0
      unshuffled_array = []
      array.each do |object|
        if num == rand(array.length)
          shuffled_array.push object
        else
          unshuffled_array.push object
        end
        num = num + 1
      end
      array = unshuffled_array
    end
    shuffled_array
  end
end

puts ['a','b','c','d','e','f','z'].shuffle
