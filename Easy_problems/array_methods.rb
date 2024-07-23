


# Return element with shortest length
> array = ["1","12","123"]
> array.min
Output: "1"

### But that does not work for strings
> array = ["flower","flow","flight"]
> array.min
Output: "flight"

### So use map to return shortest string
> array = ["flower","flow","flight"]
> array.map(&:length) # which is short for array.map { |element| element.length}
Output: [6,4,6]
> array.map(&:length).min
Output: 4


# Each with index
array.each_with_index do |element, index|
  array[element] #index



