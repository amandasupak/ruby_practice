# Problem 14:
# https://leetcode.com/problems/longest-common-prefix/
# Write a function to find the longest common prefix string 
# amongst an array of strings. If there is no common prefix, 
# return an empty string "".

def longest_common_prefix(array)
  array.map { |x| x.to_s }.first
end

def test_prefix(x)
  puts "List: #{x}"
  result = longest_common_prefix(x)
  puts "Longest Prefix: #{result.inspect}"
  puts ""  # Just for a clear separation in output
end

test_prefix(["flower","flow","flight"])
test_prefix(["dog","racecar","car"]) 