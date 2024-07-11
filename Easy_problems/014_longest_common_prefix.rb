# Problem 14:
# https://leetcode.com/problems/longest-common-prefix/
# Write a function to find the longest common prefix string 
# amongst an array of strings. If there is no common prefix, 
# return an empty string "".

def longest_common_prefix(array)
  prefix = ""

  # Use the length of the shortest string as the maximum possible 
  # length for the prefix
  min_length = array.map(&:length).min

  # Iterate through each character position up to the length of the shortest string
  (0...min_length).each do |i|
    # get the i'th letter in the first word
    char = array[0][i]

    # Check if the i'th letter in all the other elements is equal to char
    # where char is equal to the i'th letter from the first word
    if array.all? { |str| str[i] == char}
      prefix += char
    else
      break
    end
  end
  prefix
end

def test_prefix(x)
  puts "List: #{x}"
  result = longest_common_prefix(x)
  puts "Longest Prefix: #{result.inspect}"
  puts ""  # Just for a clear separation in output
end

test_prefix(["flower","flow","flight"])
test_prefix(["dog","racecar","car"])
test_prefix(["123", "123", "table"])



