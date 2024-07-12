# Problem 20:
# https://leetcode.com/problems/valid-parentheses/description/
# Given a string s containing just the characters 
# '(', ')', '{', '}', '[' and ']', 
# determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.



def is_valid(str)
  stack = []
  matching_bracket = { '(' => ')', '[' => ']', '{' => '}' }

  # Build a stack when you find an open bracket, and remove it from the stack
  # when you find a cooresponding closing bracket. 

  str.each_char do |char|

    # if there is an open bracket, add char to the stack
    if matching_bracket.keys.include?(char) 
      stack.push(char)

    # if there is a close bracket
    elsif matching_bracket.values.include?(char) 

      # Return false if either of these are true
      ### 1) If the stack is empty then there is no open bracket before it, so 
      ### there is no match for the closing bracket
      ### 2) If you pop off the stack and find that it's opposite does not match 
      ### the char, return true for the if statement. Example: Your char is a ')'
      ### You pop off the stack an '[' then find it's hash value ']'. These two 
      ### are not equal to each other and the if statement would return true, which
      ### then returns false and ends the loop. If the stack was a '(' with a has 
      ### of ')', and the char was a ')' then thses two would match and return false
      ### for the if statement and continue the loop. 
      if stack.empty? || matching_bracket[stack.pop] != char
        return false
      end
    end
  end
  
  stack.empty?
end

def test_is_valid(str)
puts "Input: #{str}"
results = is_valid(str)
puts "#{results.inspect}"
puts "" # Just for a clear separation in outputs
end


test_is_valid("(){}[]")   # output: true
test_is_valid("({})")     # output: true
test_is_valid("(apple)")  # output: true
test_is_valid("(]")       # output: false
test_is_valid("()}")      # output: false
test_is_valid("({])")     # output: false
