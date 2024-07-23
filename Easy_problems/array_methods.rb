# Create empty array
> array = []

# Create non-empty arrray
> array = [1,2,3]
> %w[apple, banana]
Output: ["apple", "banana"]

# Print specific element
> array = ["a", "b", "c"]
> array[0]
Output: "a"
> array[-1] or array.last
Output: "c"


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
# Pop removes it
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


