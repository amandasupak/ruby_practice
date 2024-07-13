# Problem 26:
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# Given an integer array nums sorted in non-decreasing order, remove the 
# duplicates in-place such that each unique element appears only once. 
# The relative order of the elements should be kept the same. Then return 
# the number of unique elements in nums.

# Consider the number of unique elements of nums to be k, to get accepted, 
# you need to do the following things:

# Change the array nums such that the first k elements of nums contain 
# the unique elements in the order they were present in nums initially. 
# The remaining elements of nums are not important as well as the size of nums.
# Return k.

##############################################################################


# first try at this problem
def remove_duplicates(nums)
  k = 0 # counter for unique array elements
  unique_array = [] # make an array that holds the unique numbers
  
  # initialize unique array with first element if nums is not empty
  if nums.length > 0
    unique_array.push(nums[0])
    k = 1
  end

  # Loop through the elements starting from the second element
  nums.each_with_index do |num, i|
    next if i == 0 # Skip the first element

    # if nums > unique array
    if num > unique_array.last
      unique_array.push(num)
      k += 1
    end
  end

  "k: #{k}, unique_array: #{unique_array}"
end

def test_remove(nums)
puts "Input: #{nums}"
results = remove_duplicates(nums)
puts "Output: #{results.inspect}"
puts "" # Just for a clear separation in outputs
end


test_remove([1,1,2])   
# output: 2, nums = [1,2,_]

test_remove([0,0,1,1,1,2,2,3,3,4])   
# output: 5, nums = [0,1,2,3,4,_,_,_,_,_]


######################################################

#second try at this problem
def remove_duplicates2(nums)
  return 0 if nums.empty?
  k = 1 # counter for unique array elements
  

  # Loop through the elements starting from the second element
  (1...nums.length).each do |i|
    if nums[i] != nums[i-1]
      # move nums[i] into the num[k] array position
      nums[k] = nums[i]
      k += 1
    end
  end
  
  k
end

def test_remove2(nums)
  puts "Input: #{nums}"
  k = remove_duplicates2(nums)
  puts "Output k: #{k.inspect}, nums: #{nums[0...k].inspect}"
  puts "" # Just for a clear separation in outputs
end


test_remove2([1,1,2])   
# output: 2, nums = [1,2,_]

test_remove2([0,0,1,1,1,2,2,3,3,4])   
# output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
