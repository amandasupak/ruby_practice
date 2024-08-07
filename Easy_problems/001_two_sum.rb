# Problem 1:
# https://leetcode.com/problems/two-sum/description/
# Given an array of integers nums and an integer target, 
# return indices of the two numbers such that they add up 
# to target. You may assume that each input would have exactly 
# one solution, and you may not use the same element twice. 
# You can return the answer in any order.

# To run this code: > chmod +x 001_two_sum.rb
#                   > ruby 001_two_sum.rb

#input
#nums = [2,7,11,15]
#target = 9

#O(n^2) answer
def two_sum1(nums, target)
    nums.each_with_index do |num1, i|
        nums.each_with_index do |num2, j|
            next if i == j
            return [i,j] if num1 + num2 == target
        end
    end
end

#O(n) answer
def two_sum2(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        complement = target - num
        if hash.key?(complement)
            return [hash[complement], index] 
        else
            hash[num] = index
        end
    end
end
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        complement = target - num
        if hash.key?(complement)
            return [hash[complement], index]
        else
            hash[num] = index
        end
    end
end


def test_two_sum(nums, target)
    puts "Testing with #{nums} and target #{target}"
    result1 = two_sum1(nums, target)
    puts "O(n^2) answer: #{result1.inspect}"
    result2 = two_sum2(nums, target)
    puts "O(n) answer: #{result2.inspect}"
    puts ""  # Just for a clear separation in output
end

# Test one
test_two_sum([2,7,11,15], 9)  #output: 0, 1

# Test two
test_two_sum([3,5,14,2,4], 6) #output: 4, 5