
# Next, adds 1 to the integer
> 1.next
Output: 2

# Split string
"Ant Bat Cat".split(" ")
Output: [ “Ant”, “Bat”, “Cat”]
“honey”.split(“”)
Output: [ 'h', 'o', 'n', 'e', 'y' ]
# Split with no arguments splits on any whitespace like spaces, tabs, or newlines
"ant    bat\t\t cat\n   duck ".split
Output:  [“Ant”, “Bat”, “Cat”, "Duck"]

# to_a method converts string to array
> (1..10).to_a
Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
> ('a'..'g').to_a
Output: ["a", "b", "c", "d", "e", "f", "g"]

# Each character
string.each_char do |char|