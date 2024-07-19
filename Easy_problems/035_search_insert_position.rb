# Problem 35: Search Insert Position
# https://leetcode.com/problems/search-insert-position/description/

# Given a sorted array of distinct integers and a target value, return the 
# index if the target is found. If not, return the index where it would be if 
# it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:
# Input: nums = [1,3,5,6], target = 5
# Output: 2

# Example 2:
# Input: nums = [1,3,5,6], target = 2
# Output: 1

# Example 3:
# Input: nums = [1,3,5,6], target = 7
# Output: 4

##############################################################################

def search_insert(nums, target)
    left = 0 # array position 0
    right = nums.length-1 # last array position

    while left <= right 
      # calculate the midpoint for binary search
      mid_index = left + (right - left) / 2  
      mid_val = nums[mid_index]

      return mid_index if target == mid_val

      # If target < midpoint, move right pointer to midpoint and subtract 1
      if target < mid_val
        right = mid_index - 1
      end

      # If target > midpoint, move left pointer to midpoint and add 1
      if target > mid_val
        left = mid_index + 1
      end
    end

    return left
end

def test_search(nums, target)
puts "Find #{target} in #{nums.inspect}"
results = search_insert(nums, target)
puts "Output: #{results.inspect}"
puts "" # Just for a clear separation in outputs
end

test_search([1,3,5,6], 5) #output: 2
test_search([1,3,5,6], 2) #output: 1
test_search([1,3,5,6], 7) #output: 4