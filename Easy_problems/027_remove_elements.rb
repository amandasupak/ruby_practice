# Problem 27:
# https://leetcode.com/problems/remove-element/description/
# Given an integer array nums and an integer val, remove all occurrences of val 
# in nums in-place. The order of the elements may be changed. Then return the 
# number of elements in nums which are not equal to val.

# Consider the number of elements in nums which are not equal to val be k, to 
# get accepted, you need to do the following things:

# Change the array nums such that the first k elements of nums contain the 
# elements which are not equal to val. The remaining elements of nums are not 
# important as well as the size of nums. Return k.

##############################################################################

require 'pry'

def remove_elements(nums, val)
  k = 0 # counter for elements not equal to val

  nums.each_with_index do |element, i|
    if element != val
      nums[k] = element
      k += 1
    end
  end
  
  # Optionally fill the remaining elements with a placeholder for clarity
  (k...nums.length).each do |i|
    nums[i] = '_'
  end
  k
end

def test_elements(nums, val)
  puts "Input: #{nums.inspect}, remove value = #{val}"
  k = remove_elements(nums, val)
  puts "Output: nums: #{nums.inspect}, k = #{k}"
  puts "" # Just for a clear separation in outputs
end


test_elements([3,2,2,3], 3)   
# output: [2, 2], k = 2

test_elements([0,1,2,2,3,0,4,2], 2)   
# output: [0,1,4,0,3] k = 3

