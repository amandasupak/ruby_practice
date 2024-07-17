# Problem 28:
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/

# Given two strings needle and haystack, return the index of the first occurrence 
# of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "sadbutsad", needle = "sad"
# Output: 0
# Explanation: "sad" occurs at index 0 and 6.
# The first occurrence is at index 0, so we return 0.

# Example 2:

# Input: haystack = "leetcode", needle = "leeto"
# Output: -1
# Explanation: "leeto" did not occur in "leetcode", so we return -1.

##############################################################################

def haystack(haystack, needle)
  return 0 if haystack == needle

  return "#{needle} not found" if haystack.length < needle.length

  # loop through haystack, range is set so that needle
  # will have room to fit at the end of haystack
  for i in 0..(haystack.length - needle.length)
    if(haystack[i, needle.length] == needle)
      return i
    end
  end
  return "#{needle} not found"
end

def test_haystack(haystack, needle)
puts "What element finds '#{needle}' in #{haystack.inspect}?"
results = haystack(haystack, needle)
puts "Output: #{results.inspect}"
puts "" # Just for a clear separation in outputs
end

test_haystack("sadbutsad", "sad")
test_haystack("leetcode", "leeto")
test_haystack("hello world", "world")


