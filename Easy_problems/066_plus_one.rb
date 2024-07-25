# Problem 66: Plus One
# https://leetcode.com/problems/plus-one/description/

# You are given a large integer represented as an integer array digits, 
# where each digits[i] is the ith digit of the integer. The digits are 
# ordered from most significant to least significant in left-to-right order. 
# The large integer does not contain any leading 0''s.

# Increment the large integer by one and return the resulting array of digits.

# Example 1:
# Input: digits = [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# Incrementing by one gives 123 + 1 = 124.
# Thus, the result should be [1,2,4].

# Example 2:
# Input: digits = [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.
# Incrementing by one gives 4321 + 1 = 4322.
# Thus, the result should be [4,3,2,2].

# Example 3:
# Input: digits = [9]
# Output: [1,0]
# Explanation: The array represents the integer 9.
# Incrementing by one gives 9 + 1 = 10.
# Thus, the result should be [1,0].

##############################################################################

def plus_one(digits)
  integer = digits.join.to_i
  integer += 1
  string = integer.to_s
  array = string.split("").map(&:to_i)
end

# Here is the one liner of the same thing:
# (digits.join.to_i + 1).to_s.split("").map(%:to_i)

def plus_one_test(digits)
  puts "Input: #{digits.inspect}"
  results = plus_one(digits)
  puts "Output: #{results.inspect}"
  puts "" # Just for a clear separation in outputs
end

plus_one_test([1,2,3])    # answer: [1,2,4]
plus_one_test([4,3,2,1])    # answer: [4,3,2,2]
plus_one_test([9])    # answer: [1,0]