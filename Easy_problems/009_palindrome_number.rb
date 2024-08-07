# Problem 9:
# https://leetcode.com/problems/palindrome-number/description/ 
# Given an integer x, return true if x is a palindrome, 
# and false otherwise.

# answer when converting to string
def is_palindrome1(x)
    string = x.to_s
    string == string.reverse
end

# answer but not using strings
# This answer takes the last digit off of the input and slowly adds it digit
# by digit onto the reverse variable. First, take the last digit off of x using
# mod 10 (x % 10) by dividing by 10. Since it's an integer it will discard the 
# decimal place. Reverse now has 1 digit. On the next pass of the loop, reverse will
# be multiplied by 10 and x will undergo another % 10  until x is 0. This will produce
# an integer the opposite of X stored in reverse. Compare both and if they are equal it's
# a palindrome! If not, well it's not! 
def is_palindrome2(x)
    return false if x < 0
    original = x
    reverse = 0
    
    while x > 0
        reverse = reverse * 10 + x % 10
        x /= 10
    end
    original == reverse
end

def test_palindrome(x)
    puts "Testing with number: #{x}"
    result1 = is_palindrome1(x)
    puts "Converted to string answer: #{result1.inspect}"
    result2 = is_palindrome2(x)
    puts "Mode 10 answer: #{result2.inspect}"
    puts ""  # Just for a clear separation in output
end

# Test with a palindrome
test_palindrome(12321)

# Test with a non-palindrome
test_palindrome(12345)
