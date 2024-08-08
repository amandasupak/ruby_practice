# Create empty array
> array = []

# Create non-empty arrray
> array = [1,2,3]
> %w[apple, banana]
Output: ["apple", "banana"]
> %w(5,4,3,2,1)
Output: ["5,4,3,2,1"]

# Nested arrrays
> nested_array = [["salmon", "halibut"], ["coral", "reef"]]
> nested_array[1][0]
Putput: "coral"

# Print specific element or index
> array = ["a", "b", "c"]
> array[0] or array.first
Output: "a"
> array[-1] or array.last
Output: "c"
> array.index("a")
Output: 0

#Mathmatical operators on arrays
> [1, 2] + [3, 4]
Output: [1, 2, 3, 4]
> [1, 2] * 3
Output: [1, 2, 1, 2, 1, 2]

# Length
> array = [1,2,3]
> array.length
Output: 3


# Sort vs Sort!
> array = [4, 7, 1]
> array.sort
Output: [1, 4, 7]
> array
Output: [4, 7, 1] #original array stays the same
> array.sort!
Output: [1, 4, 7]
> array
Output: [1, 4, 7] #original array updates

# Slice needs 2 arguments, an index in the array and how many elements
> array = [ 10, 20, 30, 40, 50]
> array.slice(2,2)
Output: [30, 40]
array.slice(1..3)
Output: [20, 30, 40]
# You can also use brackets and get rid of the “.slice”
> array[1..3] 
Output: [20, 30, 40]
> array[1,array.length-1]
Output: [20, 30, 40, 50]

# Join and array to create a string
> array = ["ant", "bat", "cat", 42]
> array.join # joins by default *empty space)
Output: "antbatcat42"
> array.join(", ")
Output: "ant, bat, cat, 42"

# Include?
array = [ 10, 20, 30, 40, 50]
array.include?(50)
Output: true
array.include?(“hello”)
Output: false

# Reverse
array = [ 10, 20, 30, 40, 50]
array.reverse
Output: [ 50, 40, 30, 20, 10 ]

# Push and Pop
# Push adds something to the end of an array
# Pop removes it, return the element you deleted
a = [ 10, 20, 30, 40, 50]
a.push(60)
=> [ 10, 20, 30, 40, 50, 60 ]
a.push(“hey”)
=> [ 10, 20, 30, 40, 50, 60, “hey” ]
a.pop(“hey”)
=> [ 10, 20, 30, 40, 50, 60 ]
a.pop
=> 60
a.pop
=> 50
a
=> [ 10, 20, 30, 40]
# Another way to push
a << “winner”
=> [ 10, 20, 30, 40, “winner”]	
a << “winner” << “chicken” << “dinner”
=> [ 10, 20, 30, 40, “winner”, “winner”, “chicken”, “dinner”]

# Shift and Unshift
# Shift takes off the first element, return the element you deleted
# Unshift adds a new element to the beginning of the array
> array = ["ant", "bat", "cat"]
> array.shift 
=> "ant"
> array
=> ["bat", "cat"]
array.unshift("apple")
=> ["apple", "bat", "cat"]

# Delete_at and detete
# Delete_at allows you to remove an element at an index, return the element you deleted
# Delete allows you to remove an element based on it's value
> array = ["ant", "bat", "cat"]
> array.delete_at(1)
=> "bat"
> array
=> ["ant", "cat"]
> array.delete("cat")
> array
=> ["ant"]



# Map: transform data in arrays, hashes and ranges
# note: .map and .collect are the same method!
> array = ["a","b","c"]
> array.map { |element| element.upcase}
> array.map(&:upcase) # which is short vesion of above
Output: [ "A", "B", "C"]
# Map - Math
> array = [1,2,3]
> array.map { |n| n * 2}
Output: [ 2, 4, 6]
# Note about map vs each. Map returns the transformed array
# while each returns the original array
> array.each { |n| n * 2 }
Output: [1, 2, 3]
# Map - Convert string to integers
> array = ["1","2","3"]
> array.map(&:to_i)
Output: [ 1, 2, 3]
# Map - with_index
> array = %w(a b c)
> array.map.with_index { |ch, idx| [ch, idx] }
Output: [["a", 0], ["b", 1], ["c", 2]]

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
> array.map(&:length) 
Output: [6,4,6]
> array.map(&:length).min
Output: 4

# Iterating over arrays
# for..in style of iterating
> fruits = ["apple", "banana", "kiwi"]
> for fruit in fruits do
>   puts fruit
> end
Output: 
apple
banana 
kiwi
# each style of iterating
> fruits.each do |fruit|
>   put fruit
> end
Output: 
apple
banana 
kiwi
# This is the same syntax
> fruits.each { |fruit| puts fruit}
# array.each_with_index
[aa, bb, cc].each_with_index do |element, index|
Output:
0: aa
1: bb
2: cc
> array[element] 
Output: index
# array.each.with_index (lets you pick the starting index #)
[aa, bb, cc].each.with_index(2) do |element, index|
Output:
2: aa
3: bb
4: cc

# .all? Passes each element of the collection to the given block. 
# The method returns true if the block never returns false or nil.
> ["ant", "bear", "cat"].all? { |word| word.length >= 3 }
=> true
> ["ant", "bear", "cat"].all? { |word| word.length >= 4 }
=> false
> ["ant", "apple", "apollo"].all? { |char| char[0] == "a" }
=> true

# .any? Returns true if a block returns anything other than false or nil
> %w[ant bear cat].any? { |word| word.length >= 3 }
=> true
> %w[ant bear cat].any?(/d/)
=> false
> [nil, true, 99].any? 
=> true
> [].any?
=> false

# Freeze
# Prevent further modification to an object
module Family
  NAMES = ['Tom', 'Dane']
end
# mutation is allowed
Family::NAMES << 'Alexander'
Family::NAMES #=> ["Tom", "Dane", "Alexander"]

module Family
  NAMES = ['Tom', 'Dane'].freeze
end
Family::NAMES.first.upcase!
Family::NAMES #=> ["TOM", "Dane"]


